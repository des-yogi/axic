{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content">
    <div class="uk-container uk-margin-medium-bottom">
      {include "file:chunks/breadcrumbs.tpl"}
    </div>
    <section class="second-banner uk-section" style="background-image: url([[*banner_bg:phpthumbon=`w=1920&h=290&f=jpeg&zc=C`]])">
      <div class="uk-container">
        <div class="uk-child-width-1-1 uk-child-width-1-2@l second-banner__inner" data-uk-grid>
          <div>
            <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>
            <p class="text-medium">
              [[*introtext]]
            </p>
          </div>
        </div>
      </div>
    </section>
    <div>
      [[pdoResources?
      &parents=`[[BabelTranslation:default=`15`? &resourceId=`15` &contextKey=`[[*context_key]]`]]`
      &depth=`0`
      &tpl=`@FILE chunks/service_block.tpl`
      &includeTVs=`service_img`
      &limit=`20`
      ]]
    </div>

    {include "file:chunks/contacts_form.tpl"}
    
  </main>
{/block}