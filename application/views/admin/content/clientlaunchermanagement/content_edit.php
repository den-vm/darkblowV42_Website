<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="card">
                <div class="card-body">
                    <?= form_open('', 'id="editfiles_form" autocomplete="off"') ?>
                    <div class="form-group">
                        <label class="col-form-label">File Name</label>
                        <input type="text" id="file_name" class="form-control" value="<?= $files->file_name ?>" placeholder="Enter Your File Name">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">File URL</label>
                        <input type="url" id="file_url" class="form-control" value="<?= $files->file_url ?>" placeholder="Enter Your File URL">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">File Type</label>
                        <select id="file_type" class="form-control reward_selection">
                            <option value="client" <?php if ($files->type == "client") {
                                                        echo 'selected';
                                                    } ?>>Client (Single Link)</option>
                            <option value="partial" <?php if ($files->type == "partial") {
                                                        echo 'selected';
                                                    } ?>>Client (Partial)</option>
                            <option value="launcher" <?php if ($files->type == "launcher") {
                                                            echo 'selected';
                                                        } ?>>Launcher</option>
                            <option value="support" <?php if ($files->type == "support") {
                                                        echo 'selected';
                                                    } ?>>Support App</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">File Size</label>
                        <input type="text" id="file_size" class="form-control" placeholder="Enter Your File Size" value="<?= $files->size ?>">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">File Version (<span class="text-danger">Optional</span>)</label>
                        <input type="text" id="file_version" class="form-control" placeholder="Enter Your File Version" value="<?= $files->version ?>">
                    </div>
                    <div class="form-group text-right">
                        <input type="submit" id="submit" class="btn btn-outline-primary text-white" value="Submit">
                    </div>
                    <?= form_close() ?>
                    <script>
                        var CSRF_TOKEN = '<?= $this->security->get_csrf_hash() ?>';
                        var RETRY = 0;
                        $(document).ready(function() {
                            $('#editfiles_form').on('submit', function(e) {
                                e.preventDefault();

                                return Do_Edit();
                            });
                        });

                        function Do_Edit() {
                            if ($('#file_name').val() == "") {
                                ShowToast(2000, 'warning', 'File Name Cannot Be Empty.');
                                return;
                            } else if ($('#file_url').val() == "") {
                                ShowToast(2000, 'warning', 'File URL Cannot Be Empty.');
                                return;
                            } else if ($('#file_type').val() == "") {
                                ShowToast(2000, 'warning', 'File Type Cannot Be Empty.');
                                return;
                            } else if ($('#file_size').val() == "") {
                                ShowToast(2000, 'warning', 'File Size Cannot Be Empty.');
                                return;
                            } else {

                                SetAttribute('submit', 'button', 'Processing...');

                                $.ajax({
                                    url: '<?= base_url('adm/clientlaunchermanagement/do_edit') ?>',
                                    type: 'POST',
                                    dataType: 'JSON',
                                    data: {
                                        '<?= $this->security->get_csrf_token_name() ?>': CSRF_TOKEN,
                                        'file_id': '<?= $this->input->get('files_id') ?>',
                                        'file_name': $('#file_name').val(),
                                        'file_url': $('#file_url').val(),
                                        'file_type': $('#file_type').val(),
                                        'file_size': $('#file_size').val(),
                                        'file_version': $('#file_version').val()
                                    },
                                    success: function(data) {
                                        var GetString = JSON.stringify(data);
                                        var Result = JSON.parse(GetString);

                                        if (Result.response == 'true') {
                                            SetAttribute('submit', 'submit', 'Submit');
                                            CSRF_TOKEN = Result.token;
                                            ShowToast(2000, 'success', Result.message);
                                            setTimeout(() => {
                                                self.history.back();
                                            }, 2000);
                                            return;
                                        } else if (Result.response == 'false') {
                                            SetAttribute('submit', 'submit', 'Submit');
                                            CSRF_TOKEN = Result.token;
                                            ShowToast(2000, 'error', Result.message);
                                            return;
                                        } else {
                                            SetAttribute('submit', 'submit', 'Submit');
                                            CSRF_TOKEN = Result.token;
                                            ShowToast(2000, 'success', Result.message);
                                            return;
                                        }
                                    },
                                    error: function() {
                                        if (RETRY >= 3) {
                                            SetAttribute('submit', 'submit', 'Submit');
                                            ShowToast(2000, 'error', 'Failed To Edit.');
                                            setTimeout(() => {
                                                window.location.reload();
                                            }, 2000);
                                        } else {
                                            ShowToast(1000, 'info', 'Generate New Request Token...');

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

                                                    return Do_Edit();
                                                },
                                                error: function(data) {
                                                    SetAttribute('submit', 'submit', 'Submit');
                                                    ShowToast(2000, 'error', 'Failed To Edit.');
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
    </div>
</div>