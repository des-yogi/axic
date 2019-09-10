<section class="contacts-form">
  <div class="uk-container uk-margin-medium-bottom">
    <div class="uk-child-width-1-2@l uk-flex-center uk-text-center" data-uk-grid>
      <div>
        <h2 class="uk-margin-small-top uk-text-uppercase">
          [[$langs? &uk=`Розпочнемо співпрацю вже сьогодні` &ru=`Начнем сотрудничество уже сегодня` &en=`Let's start cooperation now`]]
        </h2>
        <p class="text-medium">
          [[$langs?
          &uk=`Автоматизовані звіти та нарахування витрат у реальному часі означають, що ви можете приймати розумніші рішення з вашим флотом`
          &ru=`Автоматизированные отчеты и начисления расходов в реальном времени означают, что вы можете принимать разумные решения с вашим флотом`
          &en=`Automated reports and real-time costing mean you can make smarter decisions with your fleet`
          ]]
        </p>
      </div>
    </div>
  </div>
  <div class="uk-container">
    [[!FormIt?
    &hooks=`email`
    &emailFrom=`postman@axic.company`
    &emailTpl=`@FILE chunks/contact_email.tpl`
    &emailTo=`des.yogi@gmail.com`
    &emailSubject=`Сообщение с сайта [[++site_name]]`
    &validate=`name:required,email:email:required,message:required:stripTags`
    &validationErrorMessage=`[[$langs? &uk=`У формі міститися помилки!` &ru=`В форме содержаться ошибки!` &en=`The form contains errors!`]]`
    &successMessage=`[[$langs? &uk=`Повідомлення успішно відправлено!` &ru=`Сообщение успешно отправлено!` &en=`Message sent successfully!`]]`
    ]]

    [[!+fi.successMessage:notempty=`
    <div class="uk-child-width-1-2@l uk-flex-center uk-text-center uk-margin-bottom" data-uk-grid>
      <div>
        <div class="uk-alert-success" uk-alert>
          <a class="uk-alert-close" uk-close></a>
          <p>[[!+fi.successMessage]]</p>
        </div>
      </div>
    </div>
    `]]

    <form action="[[~[[*id]]]]" method="post">
      <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@m uk-child-width-1-4@l uk-flex-center" data-uk-grid>
        <div>
          <div>
            <div class="uk-margin">
              <input class="uk-input" type="text" name="name" value="[[!+fi.name]]" placeholder="[[$langs? &uk=`Ім'я` &ru=`Имя` &en=`Name`]]">
              <span class="error">[[!+fi.error.name]]</span>
            </div>
            <div class="uk-margin">
              <input class="uk-input" type="tel" name="tel" value="[[!+fi.tel]]" placeholder="[[$langs? &uk=`Телефон` &ru=`Телефон` &en=`Phone`]]">
              <span class="error">[[!+fi.error.tel]]</span>
            </div>
            <div class="uk-margin">
              <input class="uk-input" type="email" name="email" value="[[!+fi.email]]" placeholder="Email">
              <span class="error">[[!+fi.error.email]]</span>
            </div>
          </div>
        </div>
        <div>
          <div>
            <div class="uk-margin">
              <textarea class="uk-textarea" name="message" value="[[!+fi.message]]" placeholder="[[$langs? &uk=`Текст повідомлення` &ru=`Текст сообщения` &en=`Message text`]]"></textarea>
              <span class="error">[[!+fi.error.message]]</span>
            </div>
            <div class="uk-margin">
              <button class="uk-button uk-button-primary uk-width-expand contacts-form__submit" type="submit">
                [[$langs? &uk=`Зв'язатись з нами` &ru=`Связаться с нами` &en=`Contact us`]]
              </button>
            </div>
            <div class="uk-margin uk-grid-small uk-child-width-auto uk-grid">
              <label class="contacts-form__label">
                <input id="agreement" class="uk-checkbox" type="checkbox" checked>
                <span class="uk-padding-small uk-padding-remove-vertical">
                  [[$langs? &uk=`Даю згоду на обробку персональних даних` &ru=`Даю согласие на обработку персональных данных` &en=`I consent to the processing of personal data`]]
                </span>
              </label>
            </div>
          </div>
        </div>
      </div>
    </form>

  </div>
</section>