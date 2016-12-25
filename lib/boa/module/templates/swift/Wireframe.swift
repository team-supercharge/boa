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
    weak var rootWireframe: RootWireframe?
    weak var presenter: <%= @prefixed_module %>Presenter?
    weak var viewController: <%= @prefixed_module %>ViewController?

    var parameters: Any?

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

    class func presentFromViewController(_ viewController: UIViewController, _ parameters: Any? = nil) {
        let wireframe = <%= @prefixed_module %>Wireframe()
        let presenter = <%= @prefixed_module %>Presenter()
        let interactor = <%= @prefixed_module %>Interactor()
        let dataManager = <%= @prefixed_module %>DataManager()

        let view = <%= @prefixed_module %>ViewController(nibName: "<%= @prefixed_module %>ViewController", bundle: nil)

        presenter.wireframe = wireframe
        presenter.interactor = interactor
        presenter.userInterface = view

        view.eventHandler = presenter

        wireframe.presenter = presenter
        wireframe.viewController = view
        wireframe.parameters = parameters

        interactor.presenter = presenter
        interactor.dataManager = dataManager

        //  Present View
        if let nav = viewController.navigationController {
            nav.pushViewController(view, animated: true)
        } else {
            viewController.present(view, animated: true, completion: nil)
        }
    }
}
