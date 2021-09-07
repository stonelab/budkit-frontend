<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="emoji">
    <div class="wdt-emoji-popup">
        <a href="#" class="wdt-emoji-popup-mobile-closer"> X </a>
        <div class="wdt-emoji-menu-content">
            <div id="wdt-emoji-menu-header">
                <a class="wdt-emoji-tab active" data-group-name="Recent"></a>
                <a class="wdt-emoji-tab" data-group-name="People"></a>
                <a class="wdt-emoji-tab" data-group-name="Nature"></a>
                <a class="wdt-emoji-tab" data-group-name="Foods"></a>
                <a class="wdt-emoji-tab" data-group-name="Activity"></a>
                <a class="wdt-emoji-tab" data-group-name="Places"></a>
                <a class="wdt-emoji-tab" data-group-name="Objects"></a>
                <a class="wdt-emoji-tab" data-group-name="Symbols"></a>
                <a class="wdt-emoji-tab" data-group-name="Flags"></a>
                <a class="wdt-emoji-tab" data-group-name="Custom"></a>
            </div>
            <div class="wdt-emoji-scroll-wrapper">
                <div id="wdt-emoji-menu-items">
                    <input id="wdt-emoji-search" type="text" placeholder="Search" />
                    <h3 id="wdt-emoji-search-result-title">Search Results</h3>
                    <div class="wdt-emoji-sections"></div>
                    <div id="wdt-emoji-no-result">No emoji found</div>
                </div>
            </div>
            <div id="wdt-emoji-footer">
                <div id="wdt-emoji-preview">
                    <span id="wdt-emoji-preview-img"></span>
                    <div id="wdt-emoji-preview-text">
                        <span id="wdt-emoji-preview-name"></span><br />
                        <span id="wdt-emoji-preview-aliases"></span>
                    </div>
                </div>

                <div id="wdt-emoji-preview-bundle">
                    <span>WDT Emoji Bundle</span>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        //<![CDATA[
        require(['config'], function () {
            require(['wdtEmojiBundle', 'emoji'], function( wdtEmojiBundle ) {

                console.log(emoji);
                //var emoji = _emoji;

                (function () {
                    wdtEmojiBundle.defaults.emojiSheets = {
                        'apple'   : '../sheets/sheet_apple_64.png',
                        'google'  : '../sheets/sheet_google_64.png',
                        'twitter' : '../sheets/sheet_twitter_64.png',
                        'emojione': '../sheets/sheet_emojione_64.png'
                    };
                    wdtEmojiBundle.init('.wdt-emoji-bundle-enabled');
                    var typeChangers = document.querySelectorAll('.change-emoji-type');
                    for (var i = 0; i < typeChangers.length; i++) {
                        typeChangers[i].addEventListener('click', function () {
                            wdtEmojiBundle.changeType(this.dataset.emojiType);
                            return false;
                        });
                    }
                    var ev = new Event('input');
                    // ------------------------------------------------------
                    document.getElementById('comment').addEventListener('input', function () {
                        document.getElementById('comment-output').innerHTML = wdtEmojiBundle.render(this.value);
                    });
                    document.getElementById('comment').dispatchEvent(ev);
                    // ------------------------------------------------------
                })();
            })
        });
        //]]>
    </script>
</tpl:layout>