<h1>Новости</h1>
<?php
$base->Query("SELECT * FROM `".$pr."_news` ORDER BY `id` DESC");
if ($base->NumRows() > 0) {
  while ($news_data = $base->FetchArray()) {
    ?>
    <div class="news_block">
      <div class="news_title"><?=$news_data['title']; ?></div>
      <div class="news_message"><?=$news_data['message']; ?></div>
      <div class="news_footer">
        <div style="float: left; font-weight: bold">С уважением, администратор сервиса.</div>
        <div style="float: right; font-weight: bold"><?=$news_data['date']; ?></div>
        <div class="clear"></div>
      </div>
    </div>
    <?php
  }
} else echo '<div class="alert alert-danger" role="alert"><b>Новостей нет!</b></div>';
?>
