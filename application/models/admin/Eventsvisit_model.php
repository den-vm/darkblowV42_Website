<?php

// ==================== //
//   [DEV] EyeTracker   //
//     Lolsecs#2192     //
// ==================== //

defined('BASEPATH') or exit('No direct script access allowed');

class Eventsvisit_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function GetAllVisitEvents()
    {
        return $this->db->order_by('event_id', 'desc')->get('events_visit')->result_array();
    }

    function GetAllItems()
    {
        return $this->db->order_by('item_id', 'asc')->get('shop')->result_array();
    }
}

// This Code Generated Automatically By EyeTracker Snippets. //
