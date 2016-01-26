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
                var current_step = 0;

                this.options    = $.extend({},$.fn.bkform.defaults, options)

                //this.components = $(this.options.components)
                var $holder = $form.parents(this.options.form_holder).first(),
                    $nav    = $form.find(this.options.form_navigator).first(),
                    $first  = $form.find(this.options.form_first_step).first(),
                    $last   = $form.find(this.options.form_last_step).last(),
                    $steps  = $form.find(this.options.form_step)
                ;

                var holder_height = $holder.height()
                    ;

                //Prepare the interface;
                $holder.on('scroll touchmove mousewheel', function(e){
                    e.preventDefault();
                    e.stopPropagation();
                    return false;
                })

                //tabbing through items in the form should be disabled;
                $form.find('input,select,textarea').keydown(function (e) {
                    if (e.which === 9 ) {
                        $nav.find('.current').trigger('click');
                        return false;
                    }
                });

                $.each($steps, function(i, step){
                    //console.log(step);
                    $(this).height( holder_height );
                });

                //Lets navigate this form
                $(document).on('click', '[data-target-step]' , function(){
                    var $li = $(this);
                    var next_step = current_step;

                    if($li.hasClass("current")){
                        //simple to just pick the current step and iterate;
                        next_step = current_step + 1;

                    }else{
                        next_step = parseInt( $li.data("target-step")  )
                    }
                    console.log($li.data("target-step"));
                    console.log(next_step);

                    current_step = next_step;

                    //alert(current_step);

                    //kill the current;
                    $('[data-target-step="'+ next_step +'"]').addClass("current").siblings().removeClass('current');

                    //Scroll To;
                    var scroll_to = ( $li.is(":last-child") ) ? $last : $('[data-form-step="'+ next_step +'"]').first();

                    //$holder.removeClass("no-scroll");
                    //$holder.scrollTo(scroll_to.offset().top - 100);
                    $holder.animate({scrollTop: scroll_to.position().top + 130 },'500','swing',function(){
                        //Do something when finished;
                    });
                });

                //Navigation
                $(document).on('click','[data-target-navigate]', function(){

                    var $btn = $(this);
                    var next_step = current_step  + parseInt( $btn.data("target-navigate") );

                    console.log( parseInt( $btn.data("target-navigate") ));


                    current_step = next_step;

                    //kill the current;
                    $('[data-target-step="'+ next_step +'"]').addClass("current").siblings().removeClass('current');

                    //Scroll To;
                    var scroll_to =  $('[data-form-step="'+ next_step +'"]').first();

                    //$holder.removeClass("no-scroll");
                    //$holder.scrollTo(scroll_to.offset().top - 100);
                    $holder.animate({scrollTop: scroll_to.position().top + 130 },'500','swing',function(){
                        //Do something when finished;
                    });

                })
            };

        //Class Defintiion
        BKForm.prototype = {
            Constructor: BKForm,

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

