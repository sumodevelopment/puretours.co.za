<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Import required classes
 */
require_once APPPATH . 'classes/oPage.php';

/**
 * Class Page_m
 * @property Module_m $module_m
 */
class Page_m extends MY_Model
{
    private $page = NULL;

    public function __construct()
    {
        parent::__construct();
        $this->table_name = 'page';
        $this->primary_key = 'page_id';
    }

    public function get_page_list()
    {
        $this->_where(array('active' => 1));
        return $this->get();
    }

    public function get_page_content_by_id($page_id)
    {
        $query = $this->get_query_from_file('page', 'get_page_content_by_id.sql');
        $result = $this->db->query(str_replace('{$page_id}', $page_id, $query));
        $page = new PT_Classes\oPage($result->result());
        return $page;
    }

    public function get_page_content($url = NULL)
    {
        $query = $this->get_query_from_file('page', 'get_page_content.sql');
        $query = str_replace('{$url}', $url, $query);
        $result = $this->db->query($query);
        $page = new PT_Classes\oPage($result->result());
        return $page;
    }

    /**
     * @param $page_id
     * @return oPage
     */
    public function get_page_detail($page_id)
    {
        $page = $this->get($page_id);
        return $page;
    }

    public function get_page_modules($page_id)
    {
        $this->load->model('module_m');
        return $this->module_m->get_page_modules($page_id);
    }
}
