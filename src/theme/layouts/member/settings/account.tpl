<?xml version="1.0" encoding="utf-8"?>
<tpl:layout name="account" xmlns:tpl="http://budkit.org/tpl">
    <div class="col-md-12 ptm">
        <div class="panel">
            <div class="panel-body clearfix row">
                <form class="form-vertical col-md-12 col-sm-12 col-lg-8" action="/member/settings/update" method="post"
                      enctype="multipart/form-data">

                    <div class="form-group">
                        <label class="control-label" for="user_first_name">First Name</label>
                        <div class="controls">
                            <input class="form-control" id="first-name" name="user_first_name" size="30"
                                   type="text" tpl:value="${account.user_first_name}"/>
                        </div>
                    </div><!-- /form-group -->
                    <div class="form-group">
                        <label class="control-label" for="user_middle_name">Middle Name</label>
                        <div class="controls">
                            <input class="form-control" id="first-name" name="user_middle_name" size="30"
                                   type="text" tpl:value="${account.user_middle_name}"/>
                        </div>
                    </div><!-- /form-group -->
                    <div class="form-group">
                        <label class="control-label" for="user_last_name">Last Name</label>
                        <div class="controls">
                            <input class="form-control" id="first-name" name="user_last_name" size="30"
                                   type="text" tpl:value="${account.user_last_name}"/>
                        </div>
                    </div><!-- /form-group -->
                    <div class="form-group">
                        <label class="control-label" for="user_email">Email address</label>
                        <div class="controls">
                            <div class="input-prepend">
                                <input class="form-control" id="email" name="user_email" size="100" type="text"
                                       tpl:value="${account.user_email}"/>
                            </div>
                        </div>
                    </div>
                    <!-- /form-group -->
                    <div class="form-group">
                        <label class="control-label">Date of Birth</label>
                        <div class="controls inline-inputs clearfix">
                            <div class="row">
                                <div class="col-md-2 col-sm-2 prn">
                                    <tpl:datepicker type="day" value="account.user_dob_day" name="user_dob_day"
                                                    id="dob-day" class="form-control"/>
                                </div>
                                <div class="col-md-3 col-sm-6 prn">
                                    <tpl:datepicker type="month" value="account.user_dob_month"
                                                    name="user_dob_month" id="dob-month" class="form-control"/>
                                </div>
                                <div class="col-md-2 col-sm-4 prn">
                                    <tpl:datepicker type="year" value="account.user_dob_year"
                                                    name="user_dob_year" range="-90" limit="0"
                                                    class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="user_timezone">Time Zone</label>
                        <div class="controls">
                            <select name="user_timezone" id="timezone" class="form-control span5 drop"
                                    value="account.user_timezone">
                                <option value="-12.0">(GMT -12:00) Eniwetok, Kwajalein</option>
                                <option value="-11.0">(GMT -11:00) Midway Island, Samoa</option>
                                <option value="-10.0">(GMT -10:00) Hawaii</option>
                                <option value="-9.0">(GMT -9:00) Alaska</option>
                                <option value="-8.0">(GMT -8:00) Pacific Time (US&amp;Canada)</option>
                                <option value="-7.0">(GMT -7:00) Mountain Time (US&amp;Canada)</option>
                                <option value="-6.0">(GMT -6:00) Central Time (US&amp;Canada), Mexico City</option>
                                <option value="-5.0">(GMT -5:00) Eastern Time (US&amp;Canada), Bogota, Lima</option>
                                <option value="-4.0">(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz</option>
                                <option value="-3.5">(GMT -3:30) Newfoundland</option>
                                <option value="-3.0">(GMT -3:00) Brazil, Buenos Aires, Georgetown</option>
                                <option value="-2.0">(GMT -2:00) Mid-Atlantic</option>
                                <option value="-1.0">(GMT -1:00 hour) Azores, Cape Verde Islands</option>
                                <option value="0.0" selected="selected">(GMT) Western Europe Time, London, Lisbon,
                                    Casablanca
                                </option>
                                <option value="1.0">(GMT +1:00 hour) Brussels, Copenhagen, Madrid, Paris</option>
                                <option value="2.0">(GMT +2:00) Kaliningrad, South Africa</option>
                                <option value="3.0">(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg</option>
                                <option value="3.5">(GMT +3:30) Tehran</option>
                                <option value="4.0">(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi</option>
                                <option value="4.5">(GMT +4:30) Kabul</option>
                                <option value="5.0">(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent</option>
                                <option value="5.5">(GMT +5:30) Bombay, Calcutta, Madras, New Delhi</option>
                                <option value="5.75">(GMT +5:45) Kathmandu</option>
                                <option value="6.0">(GMT +6:00) Almaty, Dhaka, Colombo</option>
                                <option value="7.0">(GMT +7:00) Bangkok, Hanoi, Jakarta</option>
                                <option value="8.0">(GMT +8:00) Beijing, Perth, Singapore, Hong Kong</option>
                                <option value="9.0">(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk</option>
                                <option value="9.5">(GMT +9:30) Adelaide, Darwin</option>
                                <option value="10.0">(GMT +10:00) Eastern Australia, Guam, Vladivostok</option>
                                <option value="11.0">(GMT +11:00) Magadan, Solomon Islands, New Caledonia</option>
                                <option value="12.0">(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka</option>
                            </select>
                        </div>
                    </div><!-- /form-group -->
                    <div class="form-group">
                        <label class="control-label"
                               for="user_locale"> <?php echo _('Locale language'); ?></label>
                        <div class="controls">
                            <select name="user_locale" class="form-control" value="account.user_locale">
                                <option value="en_GB"><?php echo _('English - United Kingdom (en_GB)'); ?></option>
                                <option value="fr_FR"><?php echo _('French - France (fr_FR)'); ?></option>
                                <option value="de_DE"><?php echo _('German - Germany (de_DE)'); ?></option>
                            </select>
                        </div>
                    </div>

                   <!-- <div class="form-group">
                        <label class="control-label">API Key</label>
                        <div class="controls">
                            <div class="input-group">

                                <input type="text" name="user_api_key" class="form-control" tpl:value="${account.user_api_key}" />
                                <span class="input-group-btn flat">
                                    <a href="/member/settings/account/resetkey" class="add-on btn btn-default"
                                       title="Reset API Key">Reset API Key</a>
                                </span>
                            </div>

                        </div>
                    </div>
                    -->
                    <!-- /form-group -->
                    <!-- /form-group -->


                    <div class="form-actions">
                        <input type="submit" class="btn btn-primary" value="Save changes"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</tpl:layout>