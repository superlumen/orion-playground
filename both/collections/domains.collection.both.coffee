@Domains = new orion.collection 'domains',
  singularName: 'Domain'
  pluralName: 'Domains'
  link:
    title:'Doms'
    identifier: 'domains'
  tabular:
    columns: [
      data: 'domain', title: 'Domain'
    ,
      data: 'expiry', title: 'Expiry'
    ,
      data: 'provider', title: 'Provider'
    ]

Domains.attachSchema new SimpleSchema
  domain:
    type: String
  expiry:
    type: Date
  provider: orion.attribute 'hasOne', {label: 'Provider'},
    collection: Providers
    titleField: 'name'
    publicationName: 'domainsHasOneProviders'
    # create: true
  notes: orion.attribute 'summernote',
    # label: 'Notes'
    optional: true
  createdBy: orion.attribute 'createdBy'
  createdAt: orion.attribute 'createdAt'
