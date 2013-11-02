@Resources = new Meteor.Collection 'resources'
@ResourcesFS = new CollectionFS 'resources', autopublish: false