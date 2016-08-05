<?php $this->load->view('header');?>

<style type="text/css">
	/*input[type=image]{
		display: none;
		visibility: hidden;
	}*/

	 /* audio[autoplay] {
	 		display: none;
	 		visibility: hidden;
	 	} */
	 	/*iframe {
	 		display: block;
	 		height:150px;
	 	}*/
	 	/* .thumbnail{
	 		display: none;
	 		visibility: hidden;
	 	} */
	 	.readmore{
	 		position: fixed;
	 		position: absolute;
	 		display:block;
	 		bottom: 0px;
	 		right:0px;
	 	}
	 </style>
	 <div class="col-sm-12"><br></div>
	 <div class="col-sm-12"><small class="lead"> :: ข่าวและกิจกรรม ::<hr></small></div>

	 <?php foreach ($results as $newsRow ): ?>
	 	<div class="col-md-4 " >
	 		<div class="panel panel-info" >
	 			<div class="panel-heading" style="height:50px;">
	 				<i class="fa fa-file-text-o"> <b><?php echo word_limiter($newsRow['news_title'],5,'...'); ?></b></i>
	 			</div>
	 			<div class="panel-body newsTitle" style="height:180px;position:relative;">
	 				<p><?php  echo mb_substr($newsRow['news_detail'],0,200,'UTF-8'),"..."; ?></p>
	 				<br>
	 				<?php echo anchor('main/readNews/'.$newsRow['id_news'], 'อ่านเพิ่มเติม...', 'class="btn btn-default readmore"');?>
	 			</div>
	 		</div>
	 	</div>
	 <?php endforeach; ?>
	 <div class="col-sm-12 footer">
	 	<nav aria-label="Page navigation" class="text-center">
	 		<?php echo $links; ?>
	 	</nav>
	 	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p>
	 </div>
	 <?php $this->load->view('footer'); ?>
	 <script type="text/javascript">
	 	$(function(){
	 		$('iframe').css({"display": "block","height":"150px"});
	 		$('audio').attr('autoplay','disable');
	 		$('img').css('display','block').attr({'width':'200px','height':'auto'});
	 		$('input[type="image"]').css('display','block').attr({'width':'200px','height':'auto'});
	 	});
	 </script>