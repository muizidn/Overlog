//
//  AppDelegate.swift
//  DemoApp
//
//  Created by Muiz on 22/05/21.
//  Copyright © 2021 Netguru Sp. z o.o. All rights reserved.
//

import UIKit
import Overlog

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        guard let window = window else { fatalError() }
        Overlog.shared.attach(to: window)
        
        
        // Enable only HTTP Traffic feature.
        Overlog.shared.configuration.enabledFeatures = [.httpTraffic]

        // Enable only User Defaults and Keychain features.
        Overlog.shared.configuration.enabledFeatures = [.userDefaults, .keychain]

        // Enable all features (default).
        Overlog.shared.configuration.enabledFeatures = Overlog.Feature.all
        
        Overlog.shared.isHidden = false
        
        return true
    }

}

