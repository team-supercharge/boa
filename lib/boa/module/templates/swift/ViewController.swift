//
//  <%= @prefixed_module %>ViewController.swift
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

import UIKit

class <%= @prefixed_module %>ViewController: UIViewController, <%= @prefixed_module %>ViewInterface
{
    var eventHandler: <%= @prefixed_module %>ModuleInterface?

    // MARK: - View lifecycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
    }

    // MARK: - <%= @prefixed_module %>ViewInterface methods

    // *** implement view_interface methods here

    // MARK: - Button event handlers

    // ** handle UI events here

}
