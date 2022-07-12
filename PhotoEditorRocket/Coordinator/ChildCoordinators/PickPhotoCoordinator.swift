//
//  PickPhotoCoordinator.swift
//  PhotoEditorRocket
//
//  Created by mac on 12/07/2022.
//

import Foundation
import UIKit

final class PickPhotoCoordinator: AppCoordinatorProtocol {
    
    var navigatorController: UINavigationController
    
    var userPhotoViewController: UserPhotoViewController!
    private var userPhotoViewModel: UserPhotoViewModel!
    
    init(navigationController: UINavigationController) {
        self.navigatorController = navigationController
    }
    
    func Start() {
        self.navigatorController.pushViewController(self.userPhotoViewController, animated: false)
    }
    
    func initVC(){
        userPhotoViewModel = UserPhotoViewModel()
        self.userPhotoViewController = UserPhotoViewController(viewModel: userPhotoViewModel)
        userPhotoViewController.coordinator = self
    }
}
