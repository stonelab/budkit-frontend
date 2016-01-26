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
define(function(require, exports, module) {

        var $ = window.jQuery,
            BKForm = function($form, options) {
                //Events
                var $bkform = this;

                this.current_step = 0;

                this.options    = $.extend({},$.fn.bkform.defaults, options)

                this.form = $form,
                this.holder = $form.parents(this.options.form_holder).first(),
                this.nav    = $form.find(this.options.form_navigator).first(),
                this.first  = $form.find(this.options.form_first_step).first(),
                this.last   = $form.find(this.options.form_last_step).last(),
                this.steps  = $form.find(this.options.form_step)
                ;

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
                this.form.find('input,select,textarea').keydown(function (e) {
                    if (e.which === 9 ) {
                        $nav.find('.current').trigger('click');
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
                    $bkform.scrollTo(next_step);

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
            scrollTo: function(step){
                //kill the current;
                $('[data-target-step="'+ step +'"]').addClass("current").siblings().removeClass('current');

                //Scroll To;
                var scroll_to =  $('[data-form-step="'+ step +'"]').first();

                //$holder.removeClass("no-scroll");
                //$holder.scrollTo(scroll_to.offset().top - 100);
                this.holder.animate({scrollTop: scroll_to.position().top + 130 },'300','swing',function(){
                    //Do something when finished;
                });
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

