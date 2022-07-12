//
//  TabCoordinator.swift
//  PhotoEditorRocket
//
//  Created by mac on 12/07/2022.
//

import Foundation

import UIKit

class TabCoordinator: AppCoordinatorProtocol {
    var navigatorController: UINavigationController
    
    var tabBarController = UITabBarController()
    var tabBarControllers = [UIViewController]()
    
    let pickPhotoCoordinator:PickPhotoCoordinator?
    let editPhotoCoordinator:EditPhotoCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigatorController = navigationController
        pickPhotoCoordinator = PickPhotoCoordinator(navigationController: navigatorController)
        editPhotoCoordinator = EditPhotoCoordinator(navigationController: navigatorController)
    }
    
    func Start() {
        self.pickPhotoCoordinator?.initVC()
        self.pickPhotoCoordinator?.userPhotoViewController.tabBarItem = UITabBarItem(title: "Main", image: nil, selectedImage: nil)

        self.editPhotoCoordinator?.initVC()
        self.editPhotoCoordinator?.editPhotoViewController.tabBarItem = UITabBarItem(title: "Edit", image: nil, selectedImage: nil)
        
        tabBarController.viewControllers = [self.pickPhotoCoordinator!.userPhotoViewController,self.editPhotoCoordinator!.editPhotoViewController]
        navigatorController.pushViewController(tabBarController, animated: false)
    }
}
