<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: forest
 * Date: 2016/10/26
 * Time: 10:38 PM
 */

/**
 * Import required classes
 */
require_once APPPATH.'models/classes/oUser.php';

/**
 * Class User_m
 */
class User_m extends MY_Model
{
    public function __construct()
    {
        parent::__construct();
    }
}