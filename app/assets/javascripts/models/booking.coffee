# for more details see: http://emberjs.com/guides/models/defining-models/

Manyatta.Booking = DS.Model.extend
  checkin: DS.attr 'date'
  checkout: DS.attr 'date'
  occupancy: DS.attr 'number'
