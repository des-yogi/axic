{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content">
    
    <section class="index-banner">
      <div class="uk-container">
        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-text-center" data-uk-grid>
          <div>
            <div class="uk-text-left">
              <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
              <p>[[*introtext]]</p>
              <a href="[[~[[BabelTranslation:default=`14`? &resourceId=`14` &contextKey=`[[*context_key]]`]]]]" class="uk-button uk-button-default index-banner__link">
                [[$langs? &uk=`Дізнатися більше` &ru=`Узнать больше` &en=`Read more`]]
              </a>
            </div>
          </div>
          <div class="index-banner__inner">
            <div class="index-banner__img uk-position-relative">
              <picture>
                <source data-srcset="assets/img/banner-img.webp" type="image/webp">
                <img class="b-lazy" data-src="assets/img/banner-img.png" src=data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw== width="580" height="348" alt="[[*longtitle]]">
              </picture>
              <span class="uk-position-absolute index-banner__decor-bg"></span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="services-block">
      <div class="uk-container">
        <div class="uk-child-width-1-2@l uk-flex-center uk-text-center uk-margin-medium-bottom" data-uk-grid>
          <div>
            <span class="uk-h4 uk-text-uppercase uk-text-muted">[[$langs? &uk=`Поважайте свій час` &ru=`Уважайте свое время` &en=`Respect your time`]]</span>
            <h2 class="uk-margin-small-top uk-text-uppercase">
              [[pdoField? &id=`[[BabelTranslation:default=`15`? &resourceId=`15` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]
            </h2>
            <p class="text-medium">
              [[pdoField? &id=`[[BabelTranslation:default=`15`? &resourceId=`15` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]
            </p>
          </div>
        </div>
        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-4@l uk-text-center uk-margin-bottom" data-uk-grid data-uk-height-match="target: > div > .uk-card">
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`15`? &resourceId=`15` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &tpl=`@FILE chunks/service_item.tpl`
          &includeTVs=`subservices_list,service_img_bg`
          &processTVs=`service_img_bg`
          &limit=`4`
          ]]
        </div>
        <div class="uk-child-width-1-2@s uk-flex-center uk-text-center uk-margin-remove-top" data-uk-grid>
          <div>
            <a href="[[~[[BabelTranslation:default=`15`? &resourceId=`15` &contextKey=`[[*context_key]]`]]]]" class="uk-button uk-button-danger uk-width-1-1">
              [[$langs? &uk=`Усі послуги` &ru=`Все услуги` &en=`All services`]]
            </a>
          </div>
        </div>
      </div>
    </section>
    
    <section class="advantages-block">
      <div class="uk-container uk-margin-medium-bottom">
        <div class="uk-child-width-1-2@l uk-flex-center uk-text-center" data-uk-grid>
          <div>
            <span class="uk-h4 uk-text-uppercase uk-text-muted">[[$langs? &uk=`Поважайте свій час` &ru=`Уважайте свое время` &en=`Respect your time`]]</span>
            <h2 class="uk-margin-small-top uk-text-uppercase">
              [[pdoField? &id=`[[BabelTranslation:default=`26`? &resourceId=`26` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]
            </h2>
            <p class="text-medium">
              [[pdoField? &id=`[[BabelTranslation:default=`26`? &resourceId=`26` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]
            </p>
          </div>
        </div>
      </div>
      <div class="uk-section advantages-block__bg">
        <div class="uk-container">
          <div class="uk-child-width-1-1 uk-child-width-1-2@m" data-uk-grid>
            [[!getImageList?
            &tvname=`advantages_list`
            &tpl=`@CODE:
            <div>
              <h3 class="uk-text-primary">[[+advantages_name]]</h3>
              <p>[[+advantages_descr]]</p>
            </div>
            `
            &docid=`[[BabelTranslation:default=`26`? &resourceId=`26` &contextKey=`[[*context_key]]`]]`
            &limit=`4`
            ]]
          </div>
        </div>
      </div>
    </section>

    <section class="advantages-block  clients-slider">
      <div class="uk-container uk-margin-medium-bottom">
        <div class="uk-child-width-1-2@l uk-flex-center uk-text-center" data-uk-grid>
          <div>
            <h2 class="uk-margin-small-top uk-text-uppercase">
              [[pdoField? &id=`[[BabelTranslation:default=`20`? &resourceId=`20` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]
            </h2>
            <p class="text-medium">
              [[pdoField? &id=`[[BabelTranslation:default=`20`? &resourceId=`20` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]
            </p>
          </div>
        </div>
      </div>
      <div class="uk-container">
        <div class="uk-position-relative" tabindex="-1" data-uk-slider="center: true;">
          <div class="uk-slider-container">
            <ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-4@s">
              [[!getImageList?
              &tvname=`clients_list`
              &tpl=`client_slide_tpl`
              &docid=`[[BabelTranslation:default=`20`? &resourceId=`20` &contextKey=`[[*context_key]]`]]`
              &limit=`30`
              ]]
            </ul>
            <div>
              <a class="uk-position-center-left uk-position-small" href="#" uk-slidenav-previous
                 uk-slider-item="previous"></a>
              <a class="uk-position-center-right uk-position-small" href="#" uk-slidenav-next
                 uk-slider-item="next"></a>
            </div>
          </div>
          <ul class="uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul>
        </div>
      </div>
    </section>

    <section class="advantages-block  partners-slider">
      <div class="uk-container uk-margin-medium-bottom">
        <div class="uk-child-width-1-2@l uk-flex-center uk-text-center" data-uk-grid>
          <div>
            <h2 class="uk-margin-small-top uk-text-uppercase">
              [[pdoField? &id=`[[BabelTranslation:default=`19`? &resourceId=`19` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]
            </h2>
            <p class="text-medium">
              [[pdoField? &id=`[[BabelTranslation:default=`19`? &resourceId=`19` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]
            </p>
          </div>
        </div>
      </div>
      <div class="uk-container">
        <div class="uk-position-relative" tabindex="-1" data-uk-slider="center: true;">
          <div class="uk-slider-container">
            <ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-4@s">
              [[!getImageList?
              &tvname=`clients_list`
              &tpl=`client_slide_tpl`
              &docid=`[[BabelTranslation:default=`19`? &resourceId=`19` &contextKey=`[[*context_key]]`]]`
              &limit=`30`
              ]]
            </ul>
            <div>
              <a class="uk-position-center-left uk-position-small" href="#" uk-slidenav-previous
                 uk-slider-item="previous"></a>
              <a class="uk-position-center-right uk-position-small" href="#" uk-slidenav-next
                 uk-slider-item="next"></a>
            </div>
          </div>
          <ul class="uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul>
        </div>
      </div>
    </section>

    <section class="news-block">
      <div class="uk-container">
        <div class="uk-child-width-1-2@l uk-flex-center uk-text-center uk-margin-medium-bottom" data-uk-grid>
          <div>
            <h2 class="uk-margin-small-top uk-text-uppercase">
              [[pdoField? &id=`[[BabelTranslation:default=`16`? &resourceId=`16` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]
            </h2>
          </div>
        </div>
        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m uk-text-center uk-margin-bottom"
             data-uk-grid data-uk-height-match="target: > div > .uk-card">
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`16`? &resourceId=`16` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &tpl=`@FILE chunks/news_item.tpl`
          &includeTVs=`article_img`
          &limit=`3`
          &sortby=`{ "publishedon":"DESC" }`
          ]]
        </div>
        <div class="uk-child-width-1-2@s uk-child-width-1-3@l uk-flex-center uk-text-center uk-margin-remove-top"
             data-uk-grid>
          <div>
            <a href="[[~[[BabelTranslation:default=`16`? &resourceId=`16` &contextKey=`[[*context_key]]`]]]]" class="uk-button uk-button-default uk-width-1-1">
              [[$langs? &uk=`Усі новини` &ru=`Все новости` &en=`All news`]]
            </a>
          </div>
        </div>
      </div>
    </section>

    {include "file:chunks/contacts_form.tpl"}
    
  </main>
{/block}