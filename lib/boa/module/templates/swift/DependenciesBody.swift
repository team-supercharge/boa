// ------------------------------------------------------------------
// begin <%= @module %> module

// instantiate classes
let <%= @module.downcase %>Wireframe: <%= @prefixed_module %>Wireframe      = <%= @prefixed_module %>Wireframe()
let <%= @module.downcase %>Presenter: <%= @prefixed_module %>Presenter      = <%= @prefixed_module %>Presenter()
let <%= @module.downcase %>DataManager: <%= @prefixed_module %>DataManager  = <%= @prefixed_module %>DataManager()
let <%= @module.downcase %>Interactor: <%= @prefixed_module %>Interactor    = <%= @prefixed_module %>Interactor()

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
