// ymaps.ready(init);

// function init () {
//     // Указывается идентификатор HTML-элемента.
//     var mtMap = new ymaps.Map("map", {
//         center: [61.77504027172838, 34.33291325487779],
//         zoom: 16
//     },  {
//         searchControlProvider: 'yandex#search'
//       }),

//     mtPlacemark = new ymaps.Placemark([61.77504027172838, 34.33291325487779], {
//       // Чтобы балун и хинт открывались на метке, необходимо задать ей определенные свойства.
//       balloonContentHeader: "ГУП РК Медтехника",
//       balloonContentBody: "ул. Пирогова, д. 6А",
//       balloonContentFooter: "185002, РК, г. Петрозаводск",
//   });
//   mtMap.geoObjects.add(mtPlacemark);
// }