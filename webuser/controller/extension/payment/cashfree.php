<?php 
  class ControllerExtensionPaymentCashfree extends Controller
  {
    private $error = array(); 

    public function index()
    {
      $this->load->language('extension/payment/cashfree');
      $this->document->setTitle($this->language->get('heading_title'));
      $this->load->model('setting/setting');

      if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate())
      {
        $this->model_setting_setting->editSetting('cashfree', $this->request->post);
	      $this->session->data['success'] = $this->language->get('text_success');
        $this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] .'&type=payment', 'SSL'));
      }

      $data['heading_title'] = $this->language->get('heading_title');
      $data['text_edit'] = $this->language->get('text_edit');
      $data['text_enabled'] = $this->language->get('text_enabled');
      $data['text_disabled'] = $this->language->get('text_disabled');
      $data['text_all_zones'] = $this->language->get('text_all_zones');
      $data['text_sim'] = $this->language->get('text_sim');
      $data['text_test'] = $this->language->get('text_test');
      $data['text_live'] = $this->language->get('text_live');
      $data['text_payment'] = $this->language->get('text_payment');
      $data['text_defered'] = $this->language->get('text_defered');
      $data['text_authenticate'] = $this->language->get('text_authenticate');

      $data['entry_app_id'] = $this->language->get('entry_app_id');
      $data['entry_api_url'] = $this->language->get('entry_api_url');
      $data['entry_secret_key'] = $this->language->get('entry_secret_key');
      $data['entry_test'] = $this->language->get('entry_test');
      $data['entry_transaction'] = $this->language->get('entry_transaction');
      $data['entry_total'] = $this->language->get('entry_total');	
      $data['entry_order_status'] = $this->language->get('entry_order_status');		
      $data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
      $data['entry_status'] = $this->language->get('entry_status');
      $data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
      $data['button_save'] = $this->language->get('button_save');
      $data['button_cancel'] = $this->language->get('button_cancel');

      if (isset($this->error['warning'])) {
        $data['error_warning'] = $this->error['warning'];
      } else {
        $data['error_warning'] = '';
      }

      if (isset($this->error['app_id'])) {
        $data['error_app_id'] = $this->error['app_id'];
      } else {
        $data['error_app_id'] = '';
      }

      if (isset($this->error['api_url'])) {
        $data['error_api_url'] = $this->error['api_url'];
      } else {
        $data['error_api_url'] = '';
      }

      if (isset($this->error['secret_key'])) {
        $data['error_secret_key'] = $this->error['secret_key'];
      } else {
        $data['error_secret_key'] = '';
      }

      $data['breadcrumbs'] = array();

      $data['breadcrumbs'][] = array(
          'text'      => $this->language->get('text_home'),
	        'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      	  'separator' => false
      );

      $data['breadcrumbs'][] = array(
          'text'      => $this->language->get('text_payment'),
	        'href'      => $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'),       		
      	  'separator' => ' :: '
      );

      $data['breadcrumbs'][] = array(
          'text'      => $this->language->get('heading_title'),
	        'href'      => $this->url->link('extension/payment/cashfree', 'token=' . $this->session->data['token'], 'SSL'),
      	  'separator' => ' :: '
      );
				
      $data['action'] = $this->url->link('extension/payment/cashfree', 'token=' . $this->session->data['token'], 'SSL');
      $data['cancel'] = $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL');
		
      if (isset($this->request->post['cashfree_app_id'])) {
        $data['cashfree_app_id'] = $this->request->post['cashfree_app_id'];
      } else {
        $data['cashfree_app_id'] = $this->config->get('cashfree_app_id');
      }

      if (isset($this->request->post['cashfree_api_url'])) {
        $data['cashfree_api_url'] = $this->request->post['cashfree_api_url'];
      } else {
        $data['cashfree_api_url'] = $this->config->get('cashfree_api_url');
      }

      if (isset($this->request->post['cashfree_secret_key'])) {
        $data['cashfree_secret_key'] = $this->request->post['cashfree_secret_key'];
      } else {
	      $data['cashfree_secret_key'] = $this->config->get('cashfree_secret_key');
      }
		
      if (isset($this->request->post['cashfree_total'])) {
        $data['cashfree_total'] = $this->request->post['cashfree_total'];
      } else {
        $data['cashfree_total'] = $this->config->get('cashfree_total'); 
      } 
				
      if (isset($this->request->post['cashfree_order_status_id'])) {
        $data['cashfree_order_status_id'] = $this->request->post['cashfree_order_status_id'];
      } else {
        $data['cashfree_order_status_id'] = $this->config->get('cashfree_order_status_id'); 
      } 

      $this->load->model('localisation/order_status');
		
      $data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();
		
      if (isset($this->request->post['cashfree_geo_zone_id'])) {
        $data['cashfree_geo_zone_id'] = $this->request->post['cashfree_geo_zone_id'];
      } else {
        $data['cashfree_geo_zone_id'] = $this->config->get('cashfree_geo_zone_id'); 
      } 
		
      $this->load->model('localisation/geo_zone');
										
      $data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
		
      if (isset($this->request->post['cashfree_status'])) {
        $data['cashfree_status'] = $this->request->post['cashfree_status'];
      } else {
        $data['cashfree_status'] = $this->config->get('cashfree_status');
      }
	
      if (isset($this->request->post['cashfree_transaction'])) {
        $data['cashfree_transaction'] = $this->request->post['cashfree_transaction'];
      } else {
        $data['cashfree_transaction'] = $this->config->get('cashfree_transaction');
      }

      if (isset($this->request->post['cashfree_total'])) {
        $data['cashfree_total'] = $this->request->post['cashfree_total'];
      } else {
        $data['cashfree_total'] = $this->config->get('cashfree_total');
      }
	
      if (isset($this->request->post['cashfree_sort_order'])) {
        $data['cashfree_sort_order'] = $this->request->post['cashfree_sort_order'];
      } else {
        $data['cashfree_sort_order'] = $this->config->get('cashfree_sort_order');
      }

      $data['header'] = $this->load->controller('common/header');
      $data['column_left'] = $this->load->controller('common/column_left');
      $data['footer'] = $this->load->controller('common/footer');
      $this->response->setOutput($this->load->view('extension/payment/cashfree.tpl', $data));
    }

    private function validate()
    {
      if (!$this->user->hasPermission('modify', 'extension/payment/cashfree')) {
        $this->error['warning'] = $this->language->get('error_permission');
      }

      if (!$this->request->post['cashfree_app_id']) {
        $this->error['app_id'] = $this->language->get('error_app_id');
      }
 
      if (!$this->request->post['cashfree_secret_key']) {
        $this->error['secret_key'] = $this->language->get('error_secret_key');
      }

      if (!$this->request->post['cashfree_api_url']) {
        $this->error['api_url'] = $this->language->get('error_api_url');
      }
 
      if (!$this->error) {
        return true;
      } else {
        return false;
      }	
    }
  }
?>