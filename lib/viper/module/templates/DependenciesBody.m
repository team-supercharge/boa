// ------------------------------------------------------------------
// begin <%= @module %> module

// instantiate classes
<%= @module %>Wireframe   *<%= @module.downcase %>Wireframe   = [[<%= @module %>Wireframe alloc] init];
<%= @module %>Presenter   *<%= @module.downcase %>Presenter   = [[<%= @module %>Presenter alloc] init];
<%= @module %>DataManager *<%= @module.downcase %>DataManager = [[<%= @module %>DataManager alloc] init];
<%= @module %>Interactor  *<%= @module.downcase %>Interactor  = [[<%= @module %>Interactor alloc] init];

// presenter <-> wireframe
<%= @module.downcase %>Presenter.wireframe = <%= @module.downcase %>Wireframe;
<%= @module.downcase %>Wireframe.presenter = <%= @module.downcase %>Presenter;

// presenter <-> interactor
<%= @module.downcase %>Presenter.interactor = <%= @module.downcase %>Interactor;
<%= @module.downcase %>Interactor.presenter = <%= @module.downcase %>Presenter;

// interactor -> data_manager
<%= @module.downcase %>Interactor.dataManager = <%= @module.downcase %>DataManager;

// data_manager -> data_store
// *** connect datastore

// connect wireframes
<%= @module.downcase %>Wireframe.rootWireframe = rootWireframe;
// *** connect more wireframes

// configure delegate
// *** add delegate here if needed

// end <%= @module %> module
// ------------------------------------------------------------------
