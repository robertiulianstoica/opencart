<?php echo $header; ?>
<div class="page-header">
  <div class="container">
    <div class="pull-right">
      <button type="submit" form="form-stock-status" class="btn btn-primary"><i class="fa fa-check"></i> <?php echo $button_save; ?></button>
      <a href="<?php echo $cancel; ?>" class="btn btn-danger"><i class="fa fa-times"></i> <?php echo $button_cancel; ?></a></div>
    <h1><i class="fa fa-pencil-square fa-lg"></i> <?php echo $heading_title; ?></h1>
  </div>
</div>
<div id="content" class="container">
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-stock-status" class="form-horizontal">
    <div class="form-group required">
      <label class="col-sm-2 control-label"><?php echo $entry_name; ?></label>
      <div class="col-sm-10">
        <?php foreach ($languages as $language) { ?>
        <div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
          <input type="text" name="stock_status[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($stock_status[$language['language_id']]) ? $stock_status[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" class="form-control" />
        </div>
        <?php if (isset($error_name[$language['language_id']])) { ?>
        <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
        <?php } ?>
        <?php } ?>
      </div>
    </div>
  </form>
</div>
<?php echo $footer; ?>