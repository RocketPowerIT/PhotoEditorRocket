//
//  ViewController.swift
//  PhotoEditorRocket
//
//  Created by mac on 28/06/2022.
//

import UIKit

class UserPhotoViewController: UIViewController {

    weak var coordinator: PickPhotoCoordinator?

    var viewModel:UserPhotoViewModel?
    
    private var _view:UIView?
    
    let mainView: UserPhotoView = {
        let view = UserPhotoView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .brown
        initMainView()
        viewModel?.fetchData()
        mainView.userPictures.image = viewModel?.userPhoto
    }
    
    init(viewModel: UserPhotoViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initMainView() {
        mainView.mainViewController = self
        mainView.setupView()
    }
    
    func configureView(){
        
    }
}

