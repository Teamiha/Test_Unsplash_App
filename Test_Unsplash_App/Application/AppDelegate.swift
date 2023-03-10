//
//  AppDelegate.swift
//  Test_Unsplash_App
//
//  Created by Михаил Светлов on 04.01.2023.
//

import UIKit
import CoreData


@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.overrideUserInterfaceStyle = .light
        runLaunchScreen()
        runMainFlow()
        
        return true
    }
    
    
    func runMainFlow() {
        DispatchQueue.main.async {
            self.window?.rootViewController = TabBarConfigurator().configure()
        }
    }

    func runLaunchScreen() {
        let launchScreenViewController = UIStoryboard(name: "LaunchScreen", bundle: .main)
            .instantiateInitialViewController()

        window?.rootViewController = launchScreenViewController
    }
    
    
    
//    func applicationWillTerminate(_ application: UIApplication) {
//        StorageManager.shared.saveContext()
//        }

}

