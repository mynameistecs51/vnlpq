<?php $this->load->view('header');?>
<div class="col-sm-12"><br/><br/></div>

	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-primary">
				<div class="panel-heading">:: เพิ่มเอกสารดาวน์โหลดโครงการ ::</div>
				<div class="panel-body">
					<!-- <form action="main/docUpload" method="post" > -->
					<?php echo form_open_multipart('main/docUpload'); ?>
						<div class="form-group">
							<label for="titleDoc">หัวข้อเอกสาร</label>
							<input type="text" class="form-control" name="titleDoc" id="titleDoc" placeholder="--- ตั้งชื่อหัวข้อให้สื่อถึงเอกสาร หรือโครงการ ---">
						</div>
						<div class="form-group">
							<label for="userfile">ไฟล์อัพโหลด</label>
							<input type="file" id="userfile"  name="userfile" >
							<p class="help-block "><i class="text-danger"><?php echo $fiel_error =($error == "")?"-- ไฟล์ .pdf --":$error;?></i></p>
						</div>
						<div class="form-groupt ">
							<div class="modal-footer" style="text-align:center; background:#F6CECE;">
								<button type="submit" id="save" class="btn btn-modal"><span class="   glyphicon glyphicon-floppy-saved"> SAVE</span></button>
								<button type="reset" class="btn btn-modal" ><span class="   glyphicon glyphicon-floppy-remove"> CANCEL</span></button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<?php $this->load->view('footer');?>
<!-- </div> -->