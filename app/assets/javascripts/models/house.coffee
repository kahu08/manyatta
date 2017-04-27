# for more details see: http://emberjs.com/guides/models/defining-models/

Manyatta.House = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  telephone: DS.attr 'number'
  street: DS.attr 'string'
  rules: DS.attr 'string'
  ammenities: DS.attr 'string'
  price: DS.attr 'number'
