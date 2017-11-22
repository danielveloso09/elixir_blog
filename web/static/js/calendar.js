// $('#calendar').fullCalendar({
//   eventSources: [
//     {
//       events: function (start, end, callback) {
//         $.ajax({
//           url: '/events',
//           type: 'get',
//           dataType: 'json',
//           data: {
//             // start: start,
//             // end: end
//           },
//           error: function() {
//             alert('error')
//           },
//           success: function(data) {
//             data.events
//           }
//         });
//       }
//     }
//   ],
//   events: '/events',
//   eventRender: function(event, element) {
//     console.log(event.description);
//     // element.qtip({
//     //     content: event.description
//     // });
//   }
// });
// $('#calendar').fullCalendar('render');
var _events = [];
$.getJSON("/events", function( data ) {
  _events = data.events
  _events.push({
    id: 2,
    title: 'tilt2',
    start: new Date(),
    end: new Date(),
    description: 'description2'
  });
})
  .done(function () {
    $('#calendar').fullCalendar({
      events: _events,
      eventRender: function(event, element) {
        console.log(event.description);
        // element.qtip({
        //     content: event.description
        // });
      }
    });
  })
  .fail(function () {
    console.log("fails");
  })
  .always(function () {
    console.log("complete");
  });


