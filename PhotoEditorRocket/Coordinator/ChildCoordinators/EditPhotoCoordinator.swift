//
//  EditPhotoCoordinator.swift
//  PhotoEditorRocket
//
//  Created by mac on 12/07/2022.
//

import Foundation
import UIKit

class EditPhotoCoordinator: AppCoordinatorProtocol{
    var navigatorController: UINavigationController
    
    var editPhotoViewController: EditPhotoViewController!
    private var editPhotoViewModel: UserPhotoViewModel!
    
    init(navigationController: UINavigationController) {
        self.navigatorController = navigationController
    }

    func Start() {
        
    }
    
    func initVC(){
        editPhotoViewModel = UserPhotoViewModel()
        self.editPhotoViewController = EditPhotoViewController(viewModel: editPhotoViewModel)
        editPhotoViewController.coordinator = self
    }
    
    
}
