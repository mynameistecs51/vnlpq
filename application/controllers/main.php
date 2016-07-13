<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('mdl_main');
	}
	public function index()
	{
		$data = array(
			'fileDownload' => $this->mdl_main->getFile(),
			'news' => $this->mdl_main->getNews(),
			);
		$this->load->view('index',$data);
	}
	public function databegin()  //ข้อมูลเบื้องต้นโครงการ
	{
		$this->load->view('begindata');
	}
	public function consultant()  //คณะที่ปรึกษา
	{
		$this->load->view('consultant');
	}
	public function endorsement() //คณะรัยรอง
	{
		$this->load->view('endorsement');
	}
	public function working() //คณะทำงาน
	{
		$this->load->view('working');
	}
	public function workingtime() //กรอบระยะเวลาดำเนินงาน
	{
		$this->load->view('workingtime');
	}
	public function workplan() //แผนระยะเวลาดำเนินงาน
	{
		$this->load->view('workplan');
	}
	public function management()
	{
		$this->load->view('management');
	}
	public function upload()
	{
		$data = array(
			'error' => '',
			);
		$this->load->view('admin/docUpload',$data);
	}
	public function docUpload()
	{
		// print_r($_FILES);
		if($_FILES['userfile'] == ""){
			$massage = "กรุณาเลือกไฟล์ที่จะอัพโหลด";
			$url = "main/upload";
			$this->alert($massage,$url);
			// $this->load->view('admin/docUpload');
		}else{
			// echo "<pre>";
			// print_r($_FILES);
			$this->mdl_main->upload_fileDoc();
		}
	}
	public function download($file_name){		// download file project

		$data = file_get_contents('./files/docUpload/'.$file_name);
		$name = $file_name;
		echo force_download($name,$data);
		redirect('main','refresh');
	}
	public function addNews()
	{
		$titleNews = $this->input->post('titleNews');
		$newsContent = $this->input->post('newsContent');
		if($titleNews != '' & $newsContent != ''){
			$this->mdl_main->addNews($titleNews,$newsContent);
		}else{
			$this->load->view('admin/addNews');
		}
	}
	public function readNews($newsID)
	{
		// $data = array(
		// 	'readNews' => $this->mdl_main->getNewsID($newsID),
		// 	);
		// $this->load->view('readNews',$data);
		switch ($newsID) {
			case '4':
			$this->load->view('readNews1');
			break;
			case '5':
			$this->load->view('readNews2');
			break;
			case '6':
			$this->load->view('readNews3');
			break;
			case '7':
			$this->load->view('readNews4');
			break;
			case '8':
			$this->load->view('readNews5');
			break;
			case '9':
			$this->load->view('readNews6');
			break;
			case '10':
			$this->load->view('readNews7');
			break;
			case '11':
			$this->load->view('readNews8');
			break;
			default:
			$massage ="กำลังปรับปรุงเนื้อหาข่าว..";
			$url = "main/";
			$this->alert($massage,$url);
			break;
		}
	}
	function addPicture(){

		if($_FILES  != null){
			$upload_research = $this->Model_main->insert_Research('file_research',$_FILES['file_research']);
			$name ="";
			$a = explode(',',$upload_research);
			for($i = 1 ; $i < count($a) ; $i++){
				$name .= $a[$i].',';
			}
			$insert_research = array(
				'res_name' => $this->input->post('input_resName'),
				'res_file' => $a[0],
				'res_pict' => substr($name,0,-1),
				'res_detail' => $this->input->post('input_docDetail'),
				'res_type' => $this->input->post('research_type'),
				);
			$this->db->insert('research',$insert_research);

		}else{
			$this->load->view('admin/addPicture');
		}
	}
	public function alert($massage, $url)
	{
		echo "<meta charset='UTF-8'>
		<SCRIPT LANGUAGE='JavaScript'>
			window.alert('$massage')
			window.location.href='".site_url($url)."';
		</SCRIPT>";
	}
}

/* End of file welcome.php */