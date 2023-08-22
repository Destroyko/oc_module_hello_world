<?php
class ModelExtensionHelloOC extends Model {

    public function getLogs()
    {
       return $this->db->query("SELECT * FROM " . DB_PREFIX . "hello_oc_access_log")->rows;
    }
}