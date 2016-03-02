<tpl:layout xmlns="http://www.w3.org/1999/xhtml" xmlns:tpl="http://budkit.org/tpl">
    <div class="col-md-12 ptm">
    <div class="panel">
        <div class="panel-body">
            <form class="form-vertical">
                <p class="color-alizarin">WARNING: All actions on this page are irreversible. Thread wisely</p>
                <div class="form-group">
                    <div class="controls">
                        <span class="margin-top-half"><strong>Perform a system check</strong></span>
                        <span class="help-block">It is important that you keep your site healthy.</span>

                        <ol>
                            <li>Check for new versions of the platform as well as installed extensions</li>
                            <li>Clear the <em>/downloads</em> folder.</li>
                            <li>Check for any database inconsistencies</li>
                        </ol>
                        <a href="/settings/system/maintenance/check" class="btn btn-danger" >Check Now</a>
                    </div>
                </div>
                <hr />
                <div class="form-group">

                    <div class="controls">
                        <span class="margin-top-half"><strong>Close all sessions</strong></span>
                        <span class="help-block">Use this if for some reasons you want to clear all sessions on the system...</span>

                        <ol>
                            <li>Delete all enteries in the sessions table</li>
                            <li>Force all user's to sign in again</li>
                            <li>You will be logged out</li>
                        </ol>
                        <a href="/settings/system/maintenance/purge" class="btn btn-danger" >End All Sessions</a>
                    </div>
                </div>
                <hr />
                <div class="form-group">

                    <div class="controls">
                        <span class="margin-top-quater"><strong>Factory Reset</strong></span>
                        <span class="help-block">To manually reset your site to factor settings, do the following. Alternatively click the reset button below.</span>
                        <ol>
                            <li>Rename the setup.ini file in your config folder to setup.ini.old</li>
                            <li>Delete your database manually if required.</li>
                            <li>Delete the contents of the <em>/users</em> folder.</li>
                        </ol>
                        <a href="/settings/system/maintenance/reset" class="btn btn-danger" >Factory Reset</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
        </div>
</tpl:layout>

