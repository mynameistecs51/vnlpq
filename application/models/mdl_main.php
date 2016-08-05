<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Mdl_main extends CI_Model {
	public function __construct(){
		parent::__construct();
		date_default_timezone_set('Asia/Bangkok');
	}
	function upload_fileDoc(){  //upload file process
		$file_name =  date('dmyHis');
		$config['upload_path'] =  './files/docUpload/';
		// die(var_dump(is_dir($config['upload_path'])));
		$config['allowed_types'] = 'pdf|mp3|mp4';
		$config['max_size']    = 0;
				$config['file_name'] = $file_name.'.'.substr($_FILES['userfile']['name'],-3);		//file_name
				$config['remove_spaces'] = TRUE;
				//$name_file = $config['file_name'] = $file_name.$_FILES['userfile']['name'];		//file_name
				$this->load->library("upload",$config);		//library upload
		// $this->upload->initialize($config);
			if($this->upload->do_upload()){	//ถ้า upload ไม่มีปัญหา
				$data = array(
					"id_upload" => "",
					"upload_title" => $this->input->post('titleDoc'),
					"upload_file" => $config['file_name'],
					);
				$this->db->insert('docupload',$data);
				$massage = "อัพโหลดไฟล์เรียบร้อย";
				$url = 'main/upload';
				$this->alert($massage,$url);
			// redirect('main/upload','refresh');
			}else{
			// echo $this->upload->display_errors('<p>', '</p>')."error_doc  ";
			// return FALSE;
				$massage = "กรุณาเลือกไฟล์ที่จะอัพโหลด";
				$url = 'main/upload';
				$this->alert($massage,$url);
				// $data = array(
				// 	'error' => '** กรุณาเลือกไฟล์  .pdf',
				// 	);
				// $this->load->view('admin/docUpload',$data);
			// redirect('main/upload','refresh');
			}
		}
		public function getFile()
		{
			$sql = "SELECT * FROM docupload";
			$query = $this->db->query($sql)->result_array();
			return $query;
		}
		public function getNews()
		{
			$sql = "SELECT * FROM news ORDER BY id_news DESC LIMIT 0,6";
			$query = $this->db->query($sql)->result_array();
			return $query;
		}
		public function getNewsAll()
		{
			$sql = "SELECT * FROM news ORDER BY id_news DESC ";
			$query = $this->db->query($sql)->result_array();
			return $query;
		}
		public function record_count()
		{
			return $this->db->count_all('news');
		}
		public function fetch_news($limit, $start) {		//สร้าง 1,2,3, link pagination
			$this->db->limit($start,$limit);
			$this->db->order_by('id_news','DESC');
			$query = $this->db->get("news");

			if ($query->num_rows() > 0) {
				foreach ($query->result_array() as $row) {
					$data[]= $row;
				}
				return $data;
			}
			return false;
		}
		public function getNewsID($newsID)
		{
			$sql = "SELECT * FROM news WHERE id_news='$newsID'";
			$query = $this->db->query($sql)->result_array();
			return $query;
		}
		public function addNews($titleNews,$newsContent)
		{
			$data = array(
				'id_news' => '',
				'news_title' => $titleNews,
				'news_detail' => $newsContent,
				);
			$this->db->insert('news',$data);
			$massage = "เพิ่มข่าวแล้ว";
			$url = 'main/addNews';
			$this->alert($massage,$url);
		}
		function uploadActivityPicture($filed , $file){  		//upload multi file picture  // require filed name & files name

			$date = date("d_m_y_H_i");
			$name_array = array();
			$count = count($_FILES[$filed]['name']);

			foreach($_FILES as $key => $value){
				for($s=0; $s < $count; $s++) {

					$_FILES[$filed]['name'] = $date.'.'.substr($value['name'][$s],-4);
					$_FILES[$filed]['type']    = $value['type'][$s];
					$_FILES[$filed]['tmp_name'] = $value['tmp_name'][$s];
					$_FILES[$filed]['error']       = $value['error'][$s];
					$_FILES[$filed]['size']    = $value['size'][$s];
					$config['upload_path'] = './files_upload/file_research/';
					$config['allowed_types'] = 'gif|jpg|png|doc|docx|pdf|ppt|pptx';
					$this->load->library('upload', $config);
					$this->upload->do_upload($filed);
					$data = $this->upload->data();
					$name_array[] = $data['file_name'];
				}
			}
			$names_research = implode(',', $name_array);
		/*
		 $this->load->database();
		$db_data = array('id'=> NULL,
		'name'=> $names);
		$this->db->insert('testtable',$db_data);
		*/
		return $names_research;
	}
	public function alert($massage,$url)
	{
		echo "<meta charset='UTF-8'>
		<SCRIPT LANGUAGE='JavaScript'>
			window.alert('$massage')
			window.location.href='".site_url($url)."';
		</SCRIPT>";
	}
}
/* End of file mdl_main.php */
/* Location: ./application/models/mdl_main.php */