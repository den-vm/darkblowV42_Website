<div class="nk-main">
    <div class="container">
        <div class="nk-gap-2"></div>
        <h3 class="nk-decorated-h-2"><span class="text-main-1">
                <?= $this->lang->line('STR_DARKBLOW_175') ?> <span class="text-white">
                    <?= $this->lang->line('STR_DARKBLOW_176') ?>
                </span>
            </span></h3>
        <div class="nk-gap-2"></div>
        <div class="row vertical-gap">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12 text-center">
                <div class="wrapper">
                    <main>
                        <div class="calendar">
                            <div class="calendar__header">
                                <div>mon</div>
                                <div>tue</div>
                                <div>wed</div>
                                <div>thu</div>
                                <div>fri</div>
                                <div>sat</div>
                                <div>sun</div>
                            </div>
                            <div class="calendar__week">
                                <?php foreach ($attend as $row) : ?>
                                    <div id="<?= $row['id'] ?>" class="calendar__day
                                    <?php
                                    if ($row['date'] == date('d-m-Y')) {
                                        if ($this->attendance->GetPlayerAttendDate($row['id'])) {
                                            echo 'claimed';
                                        } else {
                                            echo 'today';
                                        }
                                    } else if ($row['date'] < date('d-m-Y')) {
                                        if (!$this->attendance->GetPlayerAttendDate($row['id'])) {
                                            echo 'passed';
                                        } else {
                                            echo 'claimed';
                                        }
                                    }
                                    ?>
                                    " title="
                                    <?php
                                    if ($row['date'] == date('d-m-Y')) {
                                        if ($this->attendance->GetPlayerAttendDate($row['id'])) {
                                            echo 'Already Claimed';
                                        } else {
                                            echo 'Today';
                                        }
                                    } else if ($row['date'] < date('d-m-Y')) {
                                        if (!$this->attendance->GetPlayerAttendDate($row['id'])) {
                                            echo 'Passed';
                                        } else {
                                            echo 'Already Claimed';
                                        }
                                    } else {
                                        echo 'Tomorrow';
                                    }
                                    ?>
                                    ">
                                        <?= $row['day'] ?>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-12 mt-5 text-center">
                <input type="button" id="claim_today" class="nk-btn nk-btn-rounded nk-btn-outline nk-btn-color-main-1 nk-btn-lg" value="<?= $this->lang->line('STR_DARKBLOW_179') ?>" onclick="ClaimReward('<?= $this->attendance->GetTodayEventID() ?>', '<?= date('d-m-Y') ?>')">
            </div>
            <script>
                var CSRF_TOKEN = '<?= $this->security->get_csrf_hash(); ?>';
                var RETRY = 0;

                function ClaimReward(event_id, date, item_id) {
                    if (event_id == '' || event_id == null) {
                        ShowToast(2000, 'warning', '<?= $this->lang->line('STR_WARNING_17') ?>');
                        return;
                    } else if (date == '' || event_id == null) {
                        ShowToast(2000, 'warning', '<?= $this->lang->line('STR_WARNING_17') ?>');
                        return;
                    } else {
                        SetAttribute('claim_today', 'button', '<?= $this->lang->line('STR_INFO_8') ?>');

                        $.ajax({
                            url: '<?= base_url('api/servercommand/attendance') ?> ',
                            type: 'POST',
                            dataType: 'JSON',
                            data: {
                                '<?= $this->security->get_csrf_token_name() ?>': CSRF_TOKEN,
                                'opcode': '<?= $this->servercommand_library->GenerateOpcode("Attendance") ?>',
                                'secret_token': '<?= $this->servercommand_library->GenerateSecretToken() ?>',
                                'secret_keys': '<?= $this->servercommand_library->GenerateSecretKeys() ?>',
                                'command_type': 'Attendance',
                                'event_id': event_id
                            },
                            timeout: 0,
                            success: function(data) {
                                var GetString = JSON.stringify(data);
                                var Result = JSON.parse(GetString);

                                if (Result.status == 'success') {
                                    SetAttribute('claim_today', 'button', '<?= $this->lang->line('STR_DARKBLOW_179') ?>');
                                    ShowToast(2000, 'success', Result.message);
                                    CSRF_TOKEN = Result.token;
                                    setTimeout(() => {
                                        document.getElementById('<?= $this->attendance->GetTodayEventID() ?>').setAttribute('class', 'calendar__day claimed');
                                    }, 2000);
                                } else if (Result.status == 'error') {
                                    SetAttribute('claim_today', 'button', '<?= $this->lang->line('STR_DARKBLOW_179') ?>');
                                    ShowToast(2000, 'error', Result.message);
                                    CSRF_TOKEN = Result.token;
                                    return;
                                } else {
                                    SetAttribute('claim_today', 'button', '<?= $this->lang->line('STR_DARKBLOW_179') ?>');
                                    ShowToast(2000, 'error', Result.message);
                                    CSRF_TOKEN = Result.token;
                                    return;
                                }
                            },
                            error: function() {
                                if (RETRY >= 3) {
                                    SetAttribute('claim_today', 'button', '<?= $this->lang->line('STR_DARKBLOW_179') ?>');
                                    ShowToast(2000, 'error', 'Failed To Claim Reward.');
                                    setTimeout(() => {
                                        window.location.reload();
                                    }, 2000);
                                } else {
                                    RETRY += 1;
                                    ShowToast(1000, 'info', '<?= $this->lang->line('STR_WARNING_17') ?>');

                                    $.ajax({
                                        url: '<?= base_url('api/security/csrf') ?>',
                                        type: 'GET',
                                        dataType: 'JSON',
                                        data: {
                                            '<?= $this->lib->GetTokenName() ?>': '<?= $this->lib->GetTokenKey() ?>'
                                        },
                                        success: function(data) {
                                            var GetString = JSON.stringify(data);
                                            var Result = JSON.parse(GetString);

                                            if (Result.response == 'true') {
                                                CSRF_TOKEN = Result.token;
                                            }
                                            return ClaimReward(event_id, date);
                                        },
                                        error: function() {
                                            SetAttribute('claim_today', 'button', '<?= $this->lang->line('STR_DARKBLOW_179') ?>');
                                            ShowToast(2000, 'error', 'Failed To Claim Reward.');
                                            setTimeout(() => {
                                                window.location.reload();
                                            }, 2000);
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            </script>
        </div>
    </div>
</div>