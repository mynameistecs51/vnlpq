<?php $this->load->view('header');?>
<div class="col-sm-12"><br/><br/></div>
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary">
			<div class="panel-heading">:: เพิ่มข่าว ::</div>
			<div class="panel-body">
				<!-- <form action="main/docUpload" method="post" > -->
				<?php echo form_open('main/addNews'); ?>
				<div class="form-group">
					<label for="titleNews">หัวข้อข่าว</label>
					<input type="text" class="form-control" name="titleNews" id="titleNews" placeholder="--- ตั้งชื่อหัวข้อข่าว ---">
				</div>
				<div class="form-group">
					<label for="newsContent">รายละเอียดข่าว</label>
					<script type="text/javascript" src="<?php echo base_url();?>fckeditor/fckeditor.js"></script>
					<textarea name="newsContent" id="newsContent"></textarea>
					<script type="text/javascript">
						var oFCKeditor = new FCKeditor( 'newsContent' ) ;
						oFCKeditor.BasePath = '<?php echo base_url(); ?>fckeditor/';
						//oFCKeditor.Height = 300;
						oFCKeditor.ReplaceTextarea() ;
					</script>
					<!-- <textarea name="newsContent" id="newsContent" class="form-control" rows="10"></textarea> -->
				</div>
				<div class="form-groupt ">
					<div class="modal-footer" style="text-align:center; background:#F6CECE;">
						<button type="submit" id="save" class="btn btn-modal"><span class="   glyphicon glyphicon-floppy-saved"> SAVE</span></button>
						<button type="reset" class="btn btn-modal" ><span class="   glyphicon glyphicon-floppy-remove"> CANCEL</span></button>
					</div>
				</div>
			</form>
			<!-- <div class="col-sm-12">
				<script type="text/javascript" src="<?php echo base_url();?>fckeditor/fckeditor.js"></script>
				<textarea name="detail" id="detail"></textarea>
				<script type="text/javascript">
					var oFCKeditor = new FCKeditor( 'detail' ) ;
				oFCKeditor.BasePath = '<?php echo base_url(); ?>fckeditor/';
				//oFCKeditor.Height = 300;
				oFCKeditor.ReplaceTextarea() ;
				</script>
			</div> -->
		</div>
	</div>
</div>
</div>
<hr>
<?php $this->load->view('footer');?>