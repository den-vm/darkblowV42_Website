<?php

// ==================== //
//   [DEV] EyeTracker   //
//     Lolsecs#6289     //
// ==================== //

defined('BASEPATH') or exit('No direct script access allowed');


use chriskacerguis\RestServer\RestController;

class Security extends RestController
{

	function __construct()
	{
		parent::__construct();
	}

	function csrf_get()
	{
		$response = array();

		if (empty($this->input->get('tokenkey', true))) {
			$response['response'] = 'true';
			$response['token'] = '';

			$this->response($response, 200);
		} else {
			$data = array(
				'tokenkey' => $this->input->get('tokenkey', true)
			);

			$query = $this->db->get_where('web_tokenkey', array('token' => $data['tokenkey']))->row();
			if ($query) {
				if ($query->is_valid == 0) {
					$response['response'] = 'true';
					$response['token'] = '';

					$this->response($response, 200);
				} else if ($query->is_valid == 1) {
					$update = $this->db->where('token', $query->token)->update('web_tokenkey', array('is_valid' => '0'));
					$insert = $this->db->insert('web_tokenkey', array('token' => $this->lib->GenerateRandomToken(), 'is_valid' => '1'));
					if ($update && $insert) {
						$response['response'] = 'true';
						$response['token'] = $this->security->get_csrf_hash();

						$this->response($response, 200);
					} else {
						$response['response'] = 'true';
						$response['token'] = '';

						$this->response($response, 200);
					}
				} else {
					$response['response'] = 'true';
					$response['token'] = '';

					$this->response($response, 200);
				}
			} else {
				$response['response'] = 'false';
				$response['token'] = '';

				$this->response($response, 200);
			}
		}
	}

	function launchercsrf_get()
	{
		$response = array();

		$response['status'] = 'success';
		$response['csrf_token_name'] = $this->security->get_csrf_token_name();
		$response['csrf_token_hash'] = $this->security->get_csrf_hash();

		$this->response($response, 200);
	}

	function licensevalidate_post()
	{
		$data = array(
			'username' => $this->input->post('username', true),
			'password' => $this->input->post('password', true),
			'ip_address' => $this->input->ip_address()
		);

		$query = $this->db->get_where('');
	}
}

// This Code Generated Automatically By EyeTracker Snippets. //
