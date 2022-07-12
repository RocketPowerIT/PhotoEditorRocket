//
//  MainViewModel.swift
//  PhotoEditorRocket
//
//  Created by mac on 12/07/2022.
//

import Foundation
import UIKit

protocol UserPhotoViewModelProtocol {
    func configureViewModel(withModel model:PhotoModel)
}

class UserPhotoViewModel: UserPhotoViewModelProtocol {
    
   // var photoModel:PhotoModel?
    var userPhoto:UIImage?
    
    func configureViewModel(withModel model: PhotoModel) {
      //  self.userPhoto = model.image
        self.userPhoto = UIImage(named: "testImage")
    }
    
    func fetchData(){
        self.userPhoto = UIImage(named: "testImage")
    }
}
