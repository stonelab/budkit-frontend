/* ===================================================
 * budkit-fields.js v0.0.1
 * http://budkit.org/docs/fields
 * ===================================================
 * Copyright 2012 The BudKit Team
 *
 * This source file is subject to version 3.01 of the GNU/GPL License 
 * that is available through the world-wide-web at the following URI:
 * http://www.gnu.org/licenses/gpl.txt  If you did not receive a copy of
 * the GPL License and are unable to obtain it through the web, please
 * send a note to support@stonyhillshq.com so we can mail you a copy immediately.
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================== */
"use strict"
define(["jquery","jquery.validation"], function(require, exports, module) {

        var $ = window.jQuery,
            BKForm = function($form, options) {
                //Events
                var $bkform = this;

                this.current_step = 0;

                this.options    = $.extend({},$.fn.bkform.defaults, options)

                this.form   = $form,
                    this.holder = $form.parents(this.options.form_holder).first(),
                    this.nav    = $form.find(this.options.form_navigator).first(),
                    this.first  = $form.find(this.options.form_first_step).first(),
                    this.last   = $form.find(this.options.form_last_step).last(),
                    this.steps  = $form.find(this.options.form_step),
                    this.validator = $form.validate(
                        { onsubmit: false }
                    );

                //The on submite event;
                this.form.submit (function(event){

                    //Force validate the entire form;

                    //validator.form();
                    $.each($('[data-step]'), function(i, element){

                        var $element = $(element);
                        console.log($element);

                        if($element.is(":input")) {
                            $bkform.validator.element($element);
                            if (!$element.valid()) {
                                console.log($element.attr("data-step"));
                                //Reset the current step to the previous step;
                                $('[data-target-step="' + $element.attr("data-step") + '"]').addClass("error");
                            } else {
                                $('[data-target-step="' + $element.attr("data-step") + '"]').removeClass("error");
                            }
                        }
                    });

                    var validator = $bkform.form.validate();
                    var errors = validator.numberOfInvalids();

                    console.log("Force validate the form and count errors");
                    console.log(errors);

                    if (errors > 0 ) {
                        //Will not submit the form if there is more than 0 errors
                        event.preventDefault();
                    }
                });

                var holder_height = this.holder.height();


                $.each(this.steps, function(i, step){
                    //console.log(step);
                    $(this).height( holder_height );
                });


                //Prepare the interface;
                this.holder.on('scroll touchmove mousewheel', function(e){
                    e.preventDefault();
                    e.stopPropagation();
                    return false;
                })

                //tabbing through items in the form should be disabled;
                var $nav = this.nav
                this.form.find(':input').keydown(function (e) {
                    if (e.which === 9 ) {

                        var next_step = $bkform.current_step  + 1;

                        $bkform.current_step = next_step;
                        $bkform.scrollTo(next_step)

                        return false;
                    }
                });


                //Lets navigate this form
                var $holder = this.holder, $last = this.last;
                $(document).on('click', '[data-target-step]' , function(){
                    var $li = $(this);
                    var next_step = $bkform.current_step;

                    if($li.hasClass("current")){
                        //simple to just pick the current step and iterate;
                        next_step = $bkform.current_step + 1;

                    }else{
                        next_step = parseInt( $li.data("target-step")  )
                    }

                    $bkform.current_step = next_step;
                    $bkform.scrollTo(next_step, false);

                    console.log('dont validate');

                });

                //Navigation


                $(document).on('click','[data-target-navigate]', function(){

                    var $btn = $(this);
                    var next_step = $bkform.current_step  + parseInt( $btn.data("target-navigate") );

                    $bkform.current_step = next_step;
                    $bkform.scrollTo(next_step)
                });



                $( window ).resize(function() {
                    //$("#map").css("height", "100%");
                    $bkform.refresh();
                });
            };

        //Class Defintiion
        BKForm.prototype = {
            Constructor: BKForm,
            refresh: function(){

                var holder_height = this.holder.height();

                $.each(this.steps, function(i, step){
                    //console.log(step);
                    $(this).height( holder_height );
                });

                this.scrollTo(this.current_step);

            },
            scrollTo: function(step, validate){

                validate = typeof validate !== 'undefined' ?  validate : true;

                console.log("validate :"+validate);
                console.log("scroll to "+step);

                if (validate == true && !this.isValidPrevious(step - 1)) return;

                //kill the current;
                $('[data-target-step="'+ step +'"]').addClass("current").siblings().removeClass('current');

                //Scroll To;
                var scroll_to =  $('[data-form-step="'+ step +'"]').first();

                //$holder.removeClass("no-scroll");
                //$holder.scrollTo(scroll_to.offset().top - 100);
                this.holder.animate({scrollTop: scroll_to.position().top + 130 },'300','swing',function(){
                    //Do something when finished;
                });
            },
            isValidPrevious: function( step ){

                var $element = $(this.steps.eq(step)).find('[data-step="'+ step +'"]');

                if($element.is(":input")) {

                    console.log("validating step "+step);

                    this.validator.element( $element );

                    if(!$element.valid()){
                        //Reset the current step to the previous step;
                        this.current_step = step;

                        $('[data-target-step="' + step + '"]').addClass("error");

                        return false;
                    } else {

                        $('[data-target-step="' + step + '"]').removeClass("error");

                    }
                }

                $('[data-target-step="' + step + '"]').addClass("completed");

                return true;
            }
        };


        //Plugin Defintion
        $.fn.bkform = function(option) {
            return this.each(function() {
                var $this = $(this)
                    , data = $this.data('bkform')
                    , options = typeof option == 'object' && option
                    ;
                if (!data)
                    $this.data('bkform', (data = new BKForm($this, options)));
            });
        };
        $.fn.bkform.defaults = {
            form_holder: ".form-holder", //a page feature
            form_step: ".form-step", //a list of all available page features
            form_first_step: ".form-first-step",
            form_last_step: ".form-last-step",
            form_navigator: ".form-navigator",
        };
        $.fn.bkform.Constructor = BKForm;

        //Return the module
        return BKForm;
    }
);

