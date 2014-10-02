// ------------------------------------------------------------------
// begin <%= @module %> module

// instantiate classes
<%= @prefixed_module %>Wireframe   *<%= @module.downcase %>Wireframe   = [[<%= @prefixed_module %>Wireframe alloc] init];
<%= @prefixed_module %>Presenter   *<%= @module.downcase %>Presenter   = [[<%= @prefixed_module %>Presenter alloc] init];
<%= @prefixed_module %>DataManager *<%= @module.downcase %>DataManager = [[<%= @prefixed_module %>DataManager alloc] init];
<%= @prefixed_module %>Interactor  *<%= @module.downcase %>Interactor  = [[<%= @prefixed_module %>Interactor alloc] init];

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
