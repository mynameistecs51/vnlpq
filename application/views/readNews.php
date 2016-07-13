<?php $this->load->view('header');?>
<div class="col-sm-12"><br/><br/></div>

<div class="row">
	<div class="col-md-12">
		<?php foreach ($readNews as $newsRow): ?>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4><i class="fa fa-file-text-o"></i> <?php echo $newsRow['news_title']; ?></h4>
				</div>
				<div class="panel-body">
					<p style="text-align:justify;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<?php echo $newsRow['news_detail']; ?>
					</p>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
</div>
<hr/>
<?php $this->load->view('footer');?>
