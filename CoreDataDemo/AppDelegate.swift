//
//  AppDelegate.swift
//  CoreDataDemo
//
//  Created by Alexey on 22.03.2022.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        window?.rootViewController = UINavigationController(rootViewController: TaskListViewController())
        
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        StorageManager.shared.saveContext()
    }

}

