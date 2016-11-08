<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: dewaldels
 * Date: 2016/07/27
 * Time: 12:20 PM
 */

require_once APPPATH.'classes/modules/banners/BannerLarge.php';

/**
 * Class Dashboard
 * @property CI_Session $session
 */
class Dashboard extends MY_Controller {

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->resources->add_subview('cms/pages/dashboard/index');
        $this->layout_cms("Dashboard");
    }
}