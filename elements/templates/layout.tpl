<!DOCTYPE html>
<html class="scaffolding" lang="[[++cultureKey]]" prefix="og: https://ogp.me/ns#">
<head>
  <meta charset="utf-8">
  {block 'title'}
    <title>[[*longtitle:default=`[[*pagetitle]]`]] | [[++site_name]]</title>
  {/block}
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="format-detection" content="telephone=no">

  <meta property="og:url" content="[[~[[*id]]? &scheme=`full`]]"/>
  <meta property="og:type" content="website"/>
  <meta property="og:site_name" content="[[++site_name]] — [[++company_slogan]]"/>
  <meta property="og:locale" content="[[$langs? &uk=`uk_UA` &ru=`ru_UA` &en=`en_US`]]"/>
  <meta property="og:image" content="[[*og_img:ne=``:then=`[[++site_url]][[*og_img]]`:else=`[[++site_url]]assets/images/seo/sharing_home.jpg`]]"/>
  <meta property="og:title" content="[[*longtitle:default=`[[*pagetitle]]`]]"/>
  <meta property="og:description" content="[[*description:notempty=`[[*description]]`]]"/>
  <meta name="description" content="[[*description:notempty=`[[*description]]`]]">
  <meta name="keywords" content="[[+seoPro.keywords:notempty=`[[+seoPro.keywords]]`]]">
  <meta name="robots" content="[[+seoTab.robotsTag]]">

  <link rel="canonical" href="[[~[[*id]]? &scheme=`full`]]">
  <link rel="preload" href="assets/fonts/ubuntu-v14-cyrillic_latin-500.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/ubuntu-v14-cyrillic_latin-regular.woff2" as="font" type="font/woff2" crossorigin>

  <link href="[[!modxMinify?&group=`styles`]]" rel="stylesheet" media="screen">

  <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
  <link rel="manifest" href="assets/img/site.webmanifest">
  <link rel="mask-icon" href="assets/img/safari-pinned-tab.svg" color="#ffffff">
  <link rel="shortcut icon" href="assets/img/favicon.ico">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/img/mstile-144x144.png">
  <meta name="msapplication-config" content="assets/img/browserconfig.xml">
  <meta name="theme-color" content="#ffffff">
</head>
<body>
<div class="uk-offcanvas-content">
  <header class="page-header uk-margin-medium-bottom" role="banner">
    <nav class="uk-navbar-container">
      <div class="uk-container">
        <div data-uk-navbar class="uk-navbar">
          <div class="uk-navbar-left">
            <a class="uk-logo" [[*template:ne=`1`:then=`href="/"`:else=`style="pointer-events:none;"`]] title="AXIC Company">
              <img src="[[++company_logo]]" alt="AXIC logo" width="146" height="42">
            </a>
          </div>
          <div class="uk-navbar-right">
            [[pdoMenu?
            &parents=`0`
            &level=`2`
            &tplOuter=`@INLINE <ul class="uk-navbar-nav  uk-visible@l">[[+wrapper]]</ul>`
            &tpl=`@INLINE
            <li>
              <a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>
              [[+wrapper]]
            </li>`
            &tplHere=`@INLINE
            <li class="uk-active" style="pointer-events:none;">
              <a [[+attributes]]>[[+menutitle]]</a>
              [[+wrapper]]
            </li>`
            ]]
            <div class="page-header__btn-wrapper  uk-margin-left  uk-visible@s">
              <button class="uk-button uk-button-danger" data-uk-toggle="target: #callback-modal" type="button">
                [[$langs? &uk=`Зв'язатись з нами` &ru=`Связаться с нами` &en=`Contact us`]]
              </button>
              <span class="uk-inline uk-margin-small-left">
                <button class="uk-button uk-button-default" type="button">[[$langs? &uk=`Мова` &ru=`Язык` &en=`Lang`]]</button>
                <div data-uk-drop="mode: click; offset: 10" style="width: 100%">
                  <ul class="uk-list uk-background-default">
                    <li>
                      <a class href="#" title="Русский язык" style="display:block; padding: 0 20px;">Рус</a>
                    </li>
                    <li>
                      <a class href="#" title="Еще язык" style="display:block; padding: 0 20px;">Анг</a>
                    </li>
                  </ul>
                </div>
              </span>
            </div>
            <a class="uk-navbar-toggle uk-icon uk-navbar-toggle-icon uk-padding-remove-right  uk-hidden@l uk-margin-small-left"
               href="#offcanvas" data-uk-navbar-toggle-icon data-uk-toggle>
              <svg width="20" height="20" viewbox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"
                   data-svg="navbar-toggle-icon">
                <rect y="9" width="20" height="2"/>
                <rect y="3" width="20" height="2"/>
                <rect y="15" width="20" height="2"/>
              </svg>
            </a>
          </div>
        </div>
        <span class="decor-line"></span>
      </div>
    </nav>
  </header>

  {block 'main'}

  {/block}

  <footer class="page-footer uk-background-secondary uk-light" role="contentinfo">
    <div class="uk-container">
      <span class="decor-line  decor-line--footer uk-margin-medium-bottom"></span>
      <div class="uk-child-width-1-1 uk-child-width-1-3@s" data-uk-grid>
        <div>
          <div class="page-footer__logo-wrapper">
            <a [[*template:ne=`1`:then=`href="/"`:else=`style="pointer-events:none;"`]] class="uk-logo uk-display-inline-block uk-margin-bottom"
               title="AXIC Company">
              <img src="[[++company_logo_footer]]" alt="AXIC logo" width="146" height="42">
            </a>
            <p class="uk-margin-remove-top">[[++company_slogan]]</p>
            <ul class="uk-list uk-flex uk-flex-left uk-flex-middle  social">
              <li class="uk-margin-remove-top uk-margin-right">
                <a href="[[++company_fb]]" class="uk-display-inline-block uk-icon  social__link  social__link"
                   data-uk-icon="icon: facebook; ratio: 1.2" target="_blank" rel="nofollow noopener" title="Facebook">
                </a>
              </li>
              <li class="uk-margin-remove-top uk-margin-right">
                <a href="[[++company_youtube]]" class="uk-display-inline-block uk-icon  social__link  social__link"
                   data-uk-icon="icon: youtube; ratio: 1.3" target="_blank" rel="nofollow noopener" title="Youtube">
                </a>
              </li>
              <li class="uk-margin-remove-top uk-margin-right">
                <a href="[[++company_insta]]" class="uk-display-inline-block uk-icon  social__link  social__link"
                   data-uk-icon="icon: instagram; ratio: 1.1" target="_blank" rel="nofollow noopener" title="Instagram">
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div>
          <section class="page-footer__menu">
            <h5 class="uk-text-uppercase uk-margin-remove-top">[[$langs? &uk=`Меню` &ru=`Меню` &en=`Menu`]]</h5>
            <div>
              <ul class="uk-nav uk-nav-default  page-footer__contacts-list">
                <li class="uk-active  page-footer__contacts-item">
                  <a href="about.html">Про компанію</a>
                </li>
                <li class="page-footer__contacts-item">
                  <a href="services.html">Послуги</a>
                </li>
                <li class="page-footer__contacts-item">
                  <a href="news.html">Новини</a>
                </li>
                <li class="page-footer__contacts-item">
                  <a href="partners.html">Наші партнери</a>
                </li>
                <li class="page-footer__contacts-item">
                  <a href="clients.html">Наші клієнти</a>     
                </li>
                <li class="page-footer__contacts-item">
                  <a href="contacts.html">Контакти</a>
                </li>
              </ul>
            </div>
          </section>
        </div>
        <div>
          <section class="page-footer__contacts" itemscope itemtype="http://schema.org/Organization">
            <meta itemprop="name" content="Axic Company — [[$langs? &uk=`транспортні послуги` &ru=`транспортные услуги` &en=`transport services`]]">
            <h5 class="uk-text-uppercase uk-margin-remove-top">[[$langs? &uk=`Контакти` &ru=`Контакты` &en=`Contacts`]]</h5>
            <div>
              <ul class="uk-nav uk-nav-default  page-footer__contacts-list">
                <li class="uk-text-muted uk-margin-small-bottom  page-footer__contacts-item  page-footer__contacts-item--address"
                    itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                  <span itemprop="streetAddress">[[++company_address]]</span>, <span
                          itemprop="addressLocality">[[++company_city]]</span>, <span
                          itemprop="postalCode">[[++company_index]]</span>
                </li>
                <li class="page-footer__contacts-item  page-footer__contacts-item--email">
                  <a href="mailto:axic123@gmail.com" itemprop="email">[[++company_email]]</a>
                </li>
                <li class="page-footer__contacts-item  page-footer__contacts-item--tel">
                  <a href="tel:+[[++company_tel_1]]" itemprop="telephone">[[++company_tel_1:phone_format]]</a>
                  <a href="tel:+[[++company_tel_2]]" itemprop="telephone">[[++company_tel_2:phone_format]]</a>
                </li>
              </ul>
            </div>
          </section>
        </div>
      </div>
      <div class="uk-light" data-uk-grid>
        <div class="uk-width-expand">
          <span class="uk-text-small">© [[!+currentYear:default=`now`:strtotime:date=`%Y`]]. AXIC Company. [[$langs? &uk=`Всі права захищені` &ru=`Все права защищены` &en=`All rights reserved`]].</span>
        </div>
        <div class="uk-width-auto">
          <a href="https://it-doors.com" class="page-footer__dev" target="_blank" rel="nofollow noopener" title="IT-Doors Outsourcing, [[$langs? &uk=`розробка` &ru=`разработка` &en=`development`]]">
            <img src="assets/img/it-doors-logo.svg" alt="IT-Doors Outsourcing, [[$langs? &uk=`розробка` &ru=`разработка` &en=`development`]]" width="75" height="27">
          </a>
        </div>
      </div>
    </div>
  </footer>

  <div id="offcanvas" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar">
      <button class="uk-offcanvas-close" type="button" uk-close></button>
      <ul class="uk-nav uk-nav-default uk-margin-medium-top">
        <li class="uk-active">
          <a href="about.html">Про компанію</a>
        </li>
        <li class>
          <a href="services.html">Послуги</a>
        </li>
        <li class>
          <a href="news.html">Новини</a>
        </li>
        <li class>
          <a href="contacts.html">Контакти</a>
        </li>
      </ul>
      <div class="page-header__btn-wrapper  uk-hidden@s" style="display:flex;flex-direction:column;">
        <button class="uk-button uk-button-danger uk-margin-medium-top uk-margin-bottom"
                data-uk-toggle="target: #callback-modal" type="button">[[$langs? &uk=`Зв'язатись з нами` &ru=`Связаться с нами` &en=`Contact us`]]
        </button>
        <span class="uk-inline">
          <button class="uk-button uk-button-default uk-width-1-1" type="button">[[$langs? &uk=`Мова` &ru=`Язык` &en=`Lang`]]</button>
          <div data-uk-drop="mode: click; offset: 10" style="width: 100%">
            <ul class="uk-list">
              <li class>
                <a class href="#" title="Русский язык" style="display:block; padding: 0 20px;">Рус</a>
              </li>
              <li class>
                <a class href="#" title="Еще язык" style="display:block; padding: 0 20px;">Анг</a>
              </li>
            </ul>
          </div>
        </span>
      </div>
    </div>
  </div>
</div>
<!-- This is the callback-modal -->
<div id="callback-modal" data-uk-modal>
  <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">
    <h2 class="uk-modal-title">[[$langs? &uk=`Зворотній зв’язок` &ru=`Обратная связь` &en=`Feedback`]]</h2>
    <button class="uk-modal-close-default uk-close-large" type="button" uk-close></button>
    <div class="callback-modal__form-wrapper">
      <form class="callback-modal__form" action="" method="post">
        <div class="uk-margin">
          <input class="uk-input" type="text" name="name" value placeholder="[[$langs? &uk=`Ім'я` &ru=`Имя` &en=`Name`]]">
          <span class="error"></span>
        </div>
        <div class="uk-margin">
          <input class="uk-input" type="tel" name="tel" value placeholder="[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]">
          <span class="error"></span>
        </div>
        <div class="uk-margin">
          <button class="uk-button uk-button-primary uk-width-expand callback-modal__submit" type="submit">
            [[$langs? &uk=`Відправити` &ru=`Отправить` &en=`Send`]]
          </button>
        </div>
        <div class="uk-margin uk-grid-small uk-child-width-auto uk-grid">
          <label class="callback-modal__label">
            <input id="agreement2" class="uk-checkbox" type="checkbox" checked>
            <span class="uk-padding-small uk-padding-remove-vertical">
              [[$langs? &uk=`Даю згоду на обробку персональних даних` &ru=`Даю согласие на обработку персональных данных` &en=`I consent to the processing of personal data`]]
            </span>
          </label>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="[[!modxMinify?&group=`scripts`]]" defer></script>
{block 'addscript'}{/block}

</body>
</html>
