/* ===================================================
 * budkit-timeline.js v0.0.1
 * http://budkit.org/docs/editor
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
require(["jquery", "typeahead.addresspicker", "gmaps"], function($) {

    "use strict"
    var BKStream = function(object, options) {
        this.options = $.extend({}, $.fn.bkstream.defaults, options);
        this.stream = $(object);
        this.items = this.stream.children('li'); //Pull up only the immediate children


    };
    //Timeline Class
    BKStream.prototype = {
        load: function() {
        },
        comment: function() {
        },
        rate: function() {
        } //Will need a seperate BKRating class;
    };
    //Plugin Defintion
    $.fn.bkstream = function(option) {
        return this.each(function() {
            var $this = $(this)
                , options = typeof option == 'object' && option;
            //I probably should not be doing this but hey?
            $this.data('bkstream', (new BKStream(this, options)))
        });
    };
    $.fn.bkstream.defaults = {};
    $.fn.bkstream.Constructor = BKStream;

    //Plugin data api
    $(function() {


        //Plugin data api
        $(document).on('ready', '[data-target]', function(e) {
            e.preventDefault();
            $(this).bkstream();
        })
    })
});
