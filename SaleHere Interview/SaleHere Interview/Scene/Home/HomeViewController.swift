//
//  HomeViewController.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol HomeDisplayLogic: AnyObject {

}

class HomeViewController: UIViewController {
    var interactor: HomeBusinessLogic?
    var router: (HomeRoutingLogic & HomeDataPassing)?
    
    // MARK: IBOutlet

    // MARK: Object lifecycle
  
    override public func awakeFromNib() {
        super.awakeFromNib()
        configure(viewController: self)
    }

    // MARK: Setup
  
    func configure(viewController: HomeViewController) {
        let interactor: HomeInteractor = HomeInteractor()
        let presenter: HomePresenter = HomePresenter()
        let router: HomeRouter = HomeRouter()
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
        view.backgroundColor = .red
    }
  
}

extension HomeViewController: HomeDisplayLogic {
 
}
