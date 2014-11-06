//
//  <%= @prefixed_module %>Wireframe.swift
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

import Foundation
import UIKit

class <%= @prefixed_module %>Wireframe: NSObject
{
    var rootWireframe: RootWireframe?
    var presenter: <%= @prefixed_module %>Presenter?
    var viewController: <%= @prefixed_module %>ViewController?

    func presentSelfFromViewController(viewController: UIViewController)
    {
        // save reference
        self.viewController = <%= @prefixed_module %>ViewController(nibName: "<%= @prefixed_module %>ViewController", bundle: nil)

        // view <-> presenter
        self.presenter?.userInterface = self.viewController
        self.viewController?.eventHandler = self.presenter

        // present controller
        // *** present self with RootViewController
    }
}
