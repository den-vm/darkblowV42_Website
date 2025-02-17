<?php

// ==================== //
//   [DEV] EyeTracker   //
//     Lolsecs#6289     //
// ==================== //

defined('BASEPATH') or exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class Admin extends RestController
{

    function __construct()
    {
        parent::__construct();
    }

    function loginpanel_get()
    {
        $response = array();

        if (empty($this->session->userdata('uid')) && empty($this->session->userdata('login_token'))) {
            $response['response'] = 'false';
            $response['message'] = 'Failed To Logging In You To Panel.';

            $this->response($response, 200);
        } else {
            $data = array(
                'player_id' => $this->session->userdata('uid'),
                'password' => $this->session->userdata('login_token')
            );

            $query = $this->db->get_where('accounts', array('player_id' => $data['player_id'], 'password' => $data['password']))->row();
            if ($query) {
                if ($query->access_level < 3) {
                    $response['response'] = 'false';
                    $response['message'] = 'You Dont Have Access To This Page.';

                    $this->response($response, 200);
                } else {
                    $sessionData = array(
                        'admin_uid' => $query->player_id,
                        'admin_name' => $query->player_name,
                        'admin_access_level' => $query->access_level
                    );

                    $this->session->set_userdata($sessionData);

                    $response['response'] = 'true';
                    $response['message'] = 'Authorize Complete. Redirecting...';

                    $this->response($response, 200);
                }
            } else {
                $response['response'] = 'false';
                $response['message'] = 'You Dont Have Access To This Page.';

                $this->response($response, 200);
            }
        }
    }
}

// This Code Generated Automatically By EyeTracker Snippets. //
