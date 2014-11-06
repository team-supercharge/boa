// ------------------------------------------------------------------
// begin <%= @module %> module

// instantiate classes
var <%= @module.downcase %>Wireframe: <%= @prefixed_module %>Wireframe      = <%= @prefixed_module %>Wireframe()
var <%= @module.downcase %>Presenter: <%= @prefixed_module %>Presenter      = <%= @prefixed_module %>Presenter()
var <%= @module.downcase %>DataManager: <%= @prefixed_module %>DataManager  = <%= @prefixed_module %>DataManager()
var <%= @module.downcase %>Interactor: <%= @prefixed_module %>Interactor    = <%= @prefixed_module %>Interactor()

// presenter <-> wireframe
<%= @module.downcase %>Presenter.wireframe = <%= @module.downcase %>Wireframe
<%= @module.downcase %>Wireframe.presenter = <%= @module.downcase %>Presenter

// presenter <-> interactor
<%= @module.downcase %>Presenter.interactor = <%= @module.downcase %>Interactor
<%= @module.downcase %>Interactor.presenter = <%= @module.downcase %>Presenter

// interactor -> data_manager
<%= @module.downcase %>Interactor.dataManager = <%= @module.downcase %>DataManager

// data_manager -> data_store
// *** connect datastore

// connect wireframes
<%= @module.downcase %>Wireframe.rootWireframe = rootWireframe
// *** connect more wireframes

// configure delegate
// *** add delegate here if needed

// end <%= @module %> module
// ------------------------------------------------------------------
