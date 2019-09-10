{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content">
    <div class="uk-container uk-margin-medium-bottom">
      {include "file:chunks/breadcrumbs.tpl"}
    </div>
    <section class="second-banner  uk-section" style="background-image: url([[*banner_bg:phpthumbon=`w=1920&h=290&f=jpeg&zc=C`]])">
      <div class="uk-container">
        <div class="uk-child-width-1-1 uk-child-width-1-2@l second-banner__inner" data-uk-grid>
          <div>
            <h1>[[*pagetitle]]</h1>
            <p class="text-medium">
              [[*introtext]]
            </p>
          </div>
        </div>
      </div>
    </section>
    <section class="steps-block">
      <div class="uk-container">
        <h2 class="visually-hidden">[[$langs? &uk=`Чотири кроки до успіху` &ru=`Четыре шага к успеxу` &en=`Four steps to success`]]</h2>
        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-4@l" data-uk-grid>
          [[!getImageList?
          &tvname=`four_steps`
          &tpl=`four_steps_tpl`
          &docid=`[[*id]]`
          &limit=`4`
          ]]
        </div>
      </div>
    </section>
    <section class="about-company-block">
      <div class="uk-container">
        <div class="uk-child-width-1-1 uk-child-width-1-2@s" data-uk-grid>
          <div class="uk-flex uk-flex-middle">
            <div class="about-company-block__text">
              <h2 class="uk-margin-remove-top">[[*longtitle]]</h2>
              [[*content]]
            </div>
          </div>
          <div class="uk-margin-top about-company-block__img-wrapper">
            <div class="embed-responsive embed-responsive--4-3  about-company-block__img uk-border-rounded uk-overflow-hidden">
              <picture>
                <source data-srcset="[[*main_img:phpthumbon=`w=580&h=435&zc=C&f=webp&q=75`]]" media="(min-width: 992px)" type="image/webp">
                <source data-srcset="[[*main_img:phpthumbon=`w=580&h=435&zc=C&f=jpeg&q=75`]]" media="(min-width: 992px)">
                <!-- 580x435 -->
                <source data-srcset="[[*main_img:phpthumbon=`w=436&h=327&zc=C&f=webp&q=75`]]" media="(min-width: 768px)" type="image/webp">
                <source data-srcset="[[*main_img:phpthumbon=`w=436&h=327&zc=C&f=jpeg&q=75`]]" media="(min-width: 768px)">
                <!-- 436x327 -->
                <source data-srcset="[[*main_img:phpthumbon=`w=570&h=428&zc=C&f=webp&q=75`]]" media="(min-width: 480px)" type="image/webp">
                <source data-srcset="[[*main_img:phpthumbon=`w=570&h=428&zc=C&f=jpeg&q=75`]]" media="(min-width: 480px)">
                <!-- 570x428 -->
                <source data-srcset="[[*main_img:phpthumbon=`w=450&h=338&zc=C&f=webp&q=75`]]" type="image/webp">
                <img class="b-lazy" data-src="[[*main_img:phpthumbon=`w=450&h=338&zc=C&f=jpeg&q=75`]]" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="[[*longtitle:default=`[[*pagetitle]]`]]" width="450" height="338">
              </picture>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="team-block uk-section uk-background-secondary">
      <div class="uk-container uk-margin-medium-bottom">
        <div class="uk-child-width-1-2@l uk-flex-center uk-text-center" data-uk-grid>
          <div class="team-block__intro">
            <h2 class="uk-margin-remove-top uk-text-uppercase">
              <span class="visually-hidden">
                [[$langs? &uk=`Наша команда` &ru=`Наша команда` &en=`Our team`]] — 
              </span>
              [[pdoField? &id=`[[BabelTranslation:default=`21`? &resourceId=`21` &contextKey=`[[*context_key]]`]]` &field=`longtitle`]]
            </h2>
            <p class="text-medium">
              [[pdoField? &id=`[[BabelTranslation:default=`21`? &resourceId=`21` &contextKey=`[[*context_key]]`]]` &field=`introtext`]]
            </p>
          </div>
        </div>
      </div>
      <div class="uk-container">
        <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-4@l" data-uk-grid>
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`21`? &resourceId=`21` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &tpl=`@FILE chunks/team_member.tpl`
          &includeTVs=`team_member_img,team_member_descr`
          &limit=`4`
          ]]
        </div>
      </div>
    </section>

    {include "file:chunks/contacts_form.tpl"}

  </main>
{/block}