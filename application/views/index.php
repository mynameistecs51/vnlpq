<?php $this->load->view('header');?>

<!-- Header Carousel -->
<header id="myCarousel" class="carousel slide">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img class="img-responsive"  src="<?php echo base_url()."img/slide-index/1.jpg";?>" alt="" style="width:100%;height:100%;"/>
		</div>
		<div class="item">
			<img class="img-responsive"  src="<?php echo base_url()."img/slide-index/2.jpg";?>" alt="" style="width:100%;height:100%;"/>
		</div>
		<div class="item">
			<img class="img-responsive"  src="<?php echo base_url()."img/slide-index/3.jpg";?>" alt="" style="width:100%;height:100%;"/>
		</div>
	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		<span class="icon-prev"></span>
	</a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="icon-next"></span>
	</a>
</header>
<!-- Page Content -->
<div class="container">

	<!-- Marketing Icons Section -->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">
				ข่าว
			</h1>
		</div>
		<?php foreach ($news as $newsRow ): ?>
			<div class="col-md-4 " >
				<div class="panel panel-default" >
					<div class="panel-heading">
						<i class="fa fa-file-text-o"> <b><?php echo word_limiter($newsRow['news_title'],5,'...'); ?></b></i>
					</div>
					<div class="panel-body" style="height:180px;">
						<p><?php  echo mb_substr($newsRow['news_detail'],0,200,'UTF-8'),"..."; ?></p>
						<?php echo anchor('main/readNews/'.$newsRow['id_news'], 'อ่านเพิ่มเติม...', 'class="btn btn-default"');?>
					</div>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
	<!-- /.row -->

	<!-- Portfolio Section -->
	<div class="row">
		<div class="col-lg-12">
			<h2 class="page-header">ภาพกิจกรรม</h2>
		</div>
		<div class="col-md-4 col-sm-6">
			<!-- <a href="portfolio-item.html"> -->
			<img class="img-responsive img-portfolio img-hover" src="<?php echo base_url().'img/pictureNews/1.jpg'; ?>" alt="">
			<!-- </a> -->
		</div>
		<div class="col-md-4 col-sm-6">
			<!-- <a href="portfolio-item.html"> -->
				<img class="img-responsive img-portfolio img-hover" src="<?php echo base_url().'img/pictureNews/2.jpg'; ?>" alt="">
			<!-- </a> -->
		</div>
		<div class="col-md-4 col-sm-6">
			<!-- <a href="portfolio-item.html"> -->
				<img class="img-responsive img-portfolio img-hover" src="<?php echo base_url().'img/pictureNews/3.jpg'; ?>" alt="">
			<!-- </a> -->
		</div>
		<div class="col-md-4 col-sm-6">
			<!-- <a href="portfolio-item.html"> -->
				<img class="img-responsive img-portfolio img-hover" src="<?php echo base_url().'img/pictureNews/s1.jpg'; ?>" alt="">
			<!-- </a> -->
		</div>
		<div class="col-md-4 col-sm-6">
			<!-- <a href="portfolio-item.html"> -->
				<img class="img-responsive img-portfolio img-hover" src="<?php echo base_url().'img/pictureNews/a1.jpg'; ?>" alt="">
			<!-- </a> -->
		</div>
		<div class="col-md-4 col-sm-6">
			<!-- <a href="portfolio-item.html"> -->
				<img class="img-responsive img-portfolio img-hover" src="<?php echo base_url().'img/pictureNews/a2.jpg'; ?>" alt="">
			<!-- </a> -->
		</div>
	</div>
	<!-- /.row -->

	<!-- Features Section -->
	<div class="row">
		<div class="col-lg-12">
			<h2 class="page-header">เอกสารดาวน์โหลด</h2>
		</div>
		<div class="col-md-6">
			<p><b>เอกการที่เกี่ยวข้องกับโครงการสำหรับดาวน์โหลด:</b></p>
			<ul>
				<?php foreach ($fileDownload as $fileRow): ?>
					<li><?php echo anchor('main/download/'.$fileRow['upload_file'],$fileRow['upload_title']);?></li>
				<?php endforeach; ?>
			</ul>
		</div>
		<div class="col-sm-12">
			<h2 class="page-header">เสียงประชาสัมพันธ์โครงการฯ</h2>
		</div>
		<div class="col-sm-6">
			<audio controls autoplay>
				<source src="<?php echo base_url().'files/RadioSpot3.mp3';?>" type="audio/mpeg">
				</audio>
			</div>
		</div>
		<!-- /.row -->
		<hr>
		<?php $this->load->view('footer.php');?>