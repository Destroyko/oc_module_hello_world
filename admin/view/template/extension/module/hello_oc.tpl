<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-banner" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-hello_oc" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="name"><?php echo $entry_name; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="name" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="control-label col-sm-2"><label for="status"><?php echo $entry_status; ?></label></div>
                        <label class="col-sm-10" for="status">

                            <input type="checkbox" name="status" <?php if ($status == 'on'){ echo 'checked="checked"'; } ?> /></label>

                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="message"><?php echo $entry_message; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="message" value="<?php echo $message; ?>" id="message" class="form-control" />
                        </div>
                    </div>
                </form>
                <table>
                    <thead>
                    <tr>
                        <th>DateTime Log</th>
                    </tr>
                    </thead>
                    <?php if(!empty($logs)){ foreach ($logs as $log) { ?>
                    <tr>
                        <td><?php echo $log['datetime'] ?></td>
                    </tr>
                    <?php } }?>
                </table>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>