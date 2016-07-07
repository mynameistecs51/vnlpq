<?php $this->load->view('header');?>
<div class="col-sm-12"><br/><br/></div>

	<div class="row">
	<div class="col-sm-3"></div>
		<div class="col-sm-9 " align="center" >
			<div class="col-md-3 "  >
			<div class="well">
					<!-- <a href="#" class="fa-stack fa-5x"> -->
					<?php echo anchor('main/addNews', '<i class="fa fa-square fa-stack-2x text-primary"></i>
						<i class="fa fa-newspaper-o fa-stack-1x fa-inverse"></i>', 'class="fa-stack fa-5x"'); ?>
					<!-- </a> -->
				</div>
				<h4>เพิ่มข่าว</h4>
				<!-- <div class="panel panel-default text-center">
					<div class="panel-heading">
						<a href="#" class="fa-stack fa-5x">
							<i class="fa fa-square fa-stack-2x text-primary"></i>
							<i class="fa fa-newspaper-o fa-stack-1x fa-inverse"></i>
						</a>
					</div>
					<div class="panel-body">
						<h4>เพิ่มข่าว</h4>
						<a href="#" class="btn btn-primary">Learn More</a>
					</div>
				</div> -->
			</div>
			<div class="col-md-3 " align="center">
				<div class="well">
					<?php echo anchor('main/addPicture', '<i class="fa fa-square fa-stack-2x text-primary"></i>
						<i class="fa fa-file-image-o fa-stack-1x fa-inverse"></i>', 'class="fa-stack fa-5x"'); ?>
				</div>
				<h4>เพิ่มรูปภาพ</h4>
			</div>
			<div class="col-md-3 " align="center">
				<div class="well">
					<?php echo anchor('main/upload', '<i class="fa fa-square fa-stack-2x text-primary"></i>
						<i class="fa fa-upload fa-stack-1x fa-inverse"></i>', 'class="fa-stack fa-5x"'); ?>
				</div>
				<h4>เพิ่มเอกสารดาวน์โหลด</h4>
			</div>
			<!-- <div class="col-md-6 col-sm-6" align="center">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<a href="#" class="fa-stack fa-5x">
							<i class="fa fa-square fa-stack-2x text-primary"></i>
							<i class="fa fa-file-image-o fa-stack-1x fa-inverse"></i>
						</a>
					</div>
					<div class="panel-body">
						<h4>Service One</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
						<a href="#" class="btn btn-primary">Learn More</a>
					</div>
				</div>
			</div> -->
		</div>
	</div>
	<hr/>
	<?php $this->load->view('footer'); ?>
