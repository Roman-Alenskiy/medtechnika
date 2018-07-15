# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!(name: "Тонометры")
Category.create!(name: "Аксессуары к тонометрам")
Category.create!(name: "Ингаляторы")
Category.create!(name: "Аксессуары к ингаляторам")
Category.create!(name: "Стетоскопы")
Category.create!(name: "Термометры")
Category.create!(name: "Приборы для детей")
Category.create!(name: "Бандажи и корсеты")
Category.create!(name: "Средства реабилитации")
Category.create!(name: "Санитарные приспособления")
Category.create!(name: "Физиотерапевтические приборы")
Category.create!(name: "Диагностическое оборудование")
Category.create!(name: "Гигрометры")
Category.create!(name: "Облучатели бактерицидные")
Category.create!(name: "Облучатели рециркуляторы")
Category.create!(name: "Лампы")
Category.create!(name: "Мебель медицинская")
Category.create!(name: "Медицинская одежда")
Category.create!(name: "Разное")

Product.create!(
    name: "Тонометр автоматический для людей с пониженным зрением B.Well WA-77 «Talking» с адаптером",
    price: 3700,
    category_id: 1,
    description:'<p><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;"><span style="font-size: 16px; font-weight: 400;">Тонометр автоматический с голосовым сопровождением специально для людей незрячих или с ослабленным зрением, с функцией диагностики аритмии пульса. Прибор поставляется с универсальной манжетой M-L size (22-42 см). Сетевой адаптер в комплекте.</span></strong></p>
    <ul style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px 0px 24px 1.5em; padding: 0px; vertical-align: baseline; list-style: square; font-size: 16px;">
    <li style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;"><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Голосовое сопровождение на русском, английском и казахском языках</strong></li>
    <li style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Голосовое сообщение о необходимости замены батареек и об ошибке</li>
    <li style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Регулировка уровня громкости</li>
    <li style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;"><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Диагностика аритмии пульса</strong></li>
    <li style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;"><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Технология Fuzzy-Logic</strong>&nbsp;&ndash; индивидуальный уровень нагнетания воздуха в манжету для точного и комфортного измерения</li>
    <li style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Шкала индикации уровня артериального давления</li>
    <li style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Удобная универсальная манжета для обхвата руки 22-42 см со съемным чехлом, допускающим стирку</li>
    <li style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;"><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Сетевой адаптер в комплекте</strong></li>
    </ul>
    <h2 style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px 0px 20px; padding: 0px; vertical-align: baseline; clear: both; font-weight: normal; line-height: 1.5em;"><span style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Тонометр B.Well WA-77 &mdash; для людей с ослабленным зрением</span></h2>
    <p style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-size: 16px;"><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Компактный автоматический электронный тонометр B.Well WA-77 &laquo;Talking&raquo;&nbsp;</strong>специально для людей незрячих или с ослабленным зрением имеет голосовое сопровождение результата измерения на русском, английском и казахском языках, регулировку громкости звука и функцию диагностики аритмии пульса.</p>
    <p style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-size: 16px;">Измерить артериальное давление&nbsp;<strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">тонометром B.Well WA-77</strong>&nbsp;очень просто. Достаточно правильно наложить манжету и нажать всего одну кнопку. Весь процесс измерения происходит автоматически благодаря функции Fuzzy Logic, которая обеспечивает индивидуальный уровень нагнетания воздуха в манжету.</p>
    <p style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-size: 16px;"><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Комплект поставки:</strong>&nbsp;тонометр, универсальная манжета 22-42 см, сетевой адаптер, элементы питания АА-4 шт, руководство пользователя, гарантийный талон, упаковка.</p>
    <p style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px 0px 24px; padding: 0px; vertical-align: baseline; font-size: 16px;"><strong style="background: transparent; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;">Производитель:</strong>&nbsp;B.Well Великобритания</p>'
)