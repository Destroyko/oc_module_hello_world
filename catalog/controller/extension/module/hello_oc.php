<?php
class ControllerExtensionModuleHelloOC extends Controller {

    public function index($setting = null) {
        $data = array();
        $this->load->model('extension/module/hello_oc');
        if (isset($setting['status']) && $this->customer->isLogged()) {
            $data['message'] = $setting['message'];
            $this->model_extension_module_hello_oc->addLog();
        }
        else
            $data['message'] = null;

        return $this->load->view('extension/module/hello_oc', $data);
    }

}
