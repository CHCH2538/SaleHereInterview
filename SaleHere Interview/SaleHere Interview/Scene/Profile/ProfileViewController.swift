//
//  ProfileViewController.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol ProfileDisplayLogic: AnyObject {

}

class ProfileViewController: UIViewController {
    var interactor: ProfileBusinessLogic?
    var router: (ProfileRoutingLogic & ProfileDataPassing)?
    
    // MARK: IBOutlet

    // MARK: Object lifecycle
  
    override public func awakeFromNib() {
        super.awakeFromNib()
        configure(viewController: self)
    }

    // MARK: Setup
  
    func configure(viewController: ProfileViewController) {
        let interactor: ProfileInteractor = ProfileInteractor()
        let presenter: ProfilePresenter = ProfilePresenter()
        let router: ProfileRouter = ProfileRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
  
    // MARK: View lifecycle
  
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
  
    // MARK: Function
    
    func setupView() {
        view.backgroundColor = .cyan
    }
  
}

extension ProfileViewController: ProfileDisplayLogic {
 
}
