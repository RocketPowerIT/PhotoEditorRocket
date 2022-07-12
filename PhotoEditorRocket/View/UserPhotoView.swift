//
//  MainView.swift
//  PhotoEditorRocket
//
//  Created by mac on 12/07/2022.
//

import UIKit

class UserPhotoView: UIView {

    weak var mainViewController:UserPhotoViewController?{
        didSet{
            setupViewController()
        }
    }
    
//    func initViewWithVM(vm:UserPhotoViewModel){
//        userPictures.image=vm.photoModel?.image
//    }
   
    var userPictures:UIImageView = {
    
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func setupView(){
        backgroundColor = .gray
            
            addSubview(userPictures)
            NSLayoutConstraint.activate([
                userPictures.topAnchor.constraint(equalTo: topAnchor, constant: 20),
                userPictures.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                userPictures.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
                userPictures.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50)
            ])
    }
    
    func setupViewController(){
        translatesAutoresizingMaskIntoConstraints = false
        if let vc = mainViewController {
            vc.view.addSubview(self)
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.topAnchor),
                bottomAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.bottomAnchor),
                leadingAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.leadingAnchor),
                trailingAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.trailingAnchor)
            ])
        }
    }
}
