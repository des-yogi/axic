<div>
  <a href="[[+uri]]"
     class="uk-display-block uk-card uk-card-default uk-card-body services-block__item b-lazy"
     data-src="[[+tv.service_img_bg]]">
    <h5>[[+longtitle:default=`[[+pagetitle]]`]]</h5>
    [[!getImageList?
    &tvname=`subservices_list`
    &wrapperTpl=`@CODE: <ul class="uk-list">[[+output]]</ul>`
    &tpl=`@CODE: <li>[[+subservice_item]]</li>`
    &docid=`[[+id]]`
    &limit=`10`
    ]]
  </a>
</div>