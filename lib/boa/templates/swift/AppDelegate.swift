//
//  <%= @project %>AppDelegate.swift
//  <%= @project %>
//
//  Created by <%= @author %> on <%= @date %>.
//
//

import UIKit

@UIApplicationMain
class <%= @project %>AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?
    var dependencies: <%= @project %>AppDependencies?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        // initialize window
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white

        // initialize dependencies
        self.dependencies = <%= @project %>AppDependencies.initWithWindow(self.window!)

        // adding RootViewController
        self.dependencies?.installRootViewController()

        self.window!.makeKeyAndVisible()

        return true
    }
}
