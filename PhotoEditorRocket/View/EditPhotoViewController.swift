//
//  EditPhotoViewController.swift
//  PhotoEditorRocket
//
//  Created by mac on 12/07/2022.
//

import UIKit

class EditPhotoViewController: UIViewController {

    weak var coordinator: EditPhotoCoordinator?
    var viewModel:UserPhotoViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .green
    }
    
    init(viewModel: UserPhotoViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
