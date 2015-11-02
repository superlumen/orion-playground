@Providers = new orion.collection 'providers',
  singularName: 'Provider'
  pluralName: 'Providers'
  link:
    title: 'Providrs'
    identifier: 'providers'
    parent: 'domains'
  tabular:
    columns: [
      data: 'name', label: 'Name'
    ,
      data: 'url', label: 'Url'
    ]

Providers.attachSchema new SimpleSchema
  name:
    type: String
  url:
    type: String
    optional: true
  notes: orion.attribute 'summernote',
    optional: true
    label: 'Notes'
