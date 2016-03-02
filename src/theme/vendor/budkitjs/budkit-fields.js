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
define(['jquery', 'jquery.ui'], function(require, exports, module) {

        var $ = window.jQuery,
            $defaults = {
                components: ".field-selector", //a customer field
                holder: ".fields-holder", //a list of all available page features
                overflows: ".container-aside"
            };

        //Class Definition
        var BKFields = function(options) {

            var _$ = this;
            this.options    = $.extend({}, $defaults, options)
            //this.components = $(this.options.components)

            console.log(this.options.components);
            var overflows = this.options.overflows,
                holder = this.options.holder,
                components = this.options.components ;

            $(components).draggable({
                opacity: 0.7, helper: "clone", containment: 'window', scroll: false,
                connectWith: holder,
                start:function(){
                    $(overflows).addClass('overflow')
                },
                stop:function(){
                    $(overflows).removeClass('overflow')
                }
            });

            $(holder).sortable({
                connectWith: holder,
                cursor: 'move',
                handle: ".panel-heading:not(.fixed)",
                placeholder: "placeholder",
                scroll: false,
                stop:function(){
                    _$.renumberOrdering();
                }
            }).droppable({
                accept: _$.options.components,
                drop: function( event, ui ) {

                    //use clone(true) to copy event handlers;
                    var panel = ui.helper.find(".panel").clone(true, true);

                    //configure the field
                    $( this ).append( panel.removeClass("hide") );

                    //configure the field
                    _$.afterDropField( panel );
                }
            });

        };
        BKFields.prototype = {
            Constructor: BKFields,

            beforeDropField :function(panel){

            },
            afterDropField : function(panel){

                //This is necessary to ensure that fields are grouped properly
                var fields      = panel.find('[name*="category_form"]'),
                    timestamp   = new Date().getTime();

                $.each(fields, function(i, field){
                    //find the name attribute
                    $(field).prop("name", field.name.replace("category_form[]", "category_form["+timestamp+"]") );
                });

                //Removing a field;
                panel.find('[data-toggle="remove-field"]').on("click", function(e){
                    $(panel).remove();
                });

                this.renumberOrdering();
            },
            renumberOrdering: function(){
                //Now lets number the fields;
                $.each($(this.options.holder).find('[data-toggle="field-count"]'), function(i, field){
                    field.value = i+1;
                })
            }
        };


        //Return the module value
        return BKFields;
    }
);

