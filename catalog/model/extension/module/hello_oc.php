<?php
class ModelExtensionModuleHelloOC extends Model {

    public function addLog()
    {
        $this->db->query("INSERT INTO " . DB_PREFIX . "hello_oc_access_log SET datetime = now()");
    }
}