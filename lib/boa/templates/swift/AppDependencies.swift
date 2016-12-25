//
//  <%= @project %>AppDependencies.swift
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

import Foundation
import UIKit

class <%= @project %>AppDependencies: NSObject
{

    class func initWithWindow(_ window: UIWindow) -> <%= @project %>AppDependencies
    {

        let obj = <%= @project %>AppDependencies()
        obj.configureDependencies(window)

        return obj
    }

    func installRootViewController()
    {
        // *** present first wireframe here
    }

    func configureDependencies(_ window: UIWindow)
    {
        // -----
        // root classes
        let rootWireframe = RootWireframe.init(window: window)
        // *** add datastore

        // *** module initialization
    }
}
