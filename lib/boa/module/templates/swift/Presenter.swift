//
//  <%= @prefixed_module %>Presenter.swift
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

import Foundation

class <%= @prefixed_module %>Presenter: NSObject, <%= @prefixed_module %>ModuleInterface
{
    var interactor: <%= @prefixed_module %>Interactor?
    var wireframe: <%= @prefixed_module %>Wireframe?
    weak var userInterface: <%= @prefixed_module %>ViewInterface?

    // MARK: - <%= @prefixed_module %>ModuleInterface methods
    // implement module interface here
}
