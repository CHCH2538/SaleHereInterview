//
//  WalletViewController.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol WalletDisplayLogic: AnyObject {

}

class WalletViewController: UIViewController {
    var interactor: WalletBusinessLogic?
    var router: (WalletRoutingLogic & WalletDataPassing)?
    
    // MARK: IBOutlet

    // MARK: Object lifecycle
  
    override public func awakeFromNib() {
        super.awakeFromNib()
        configure(viewController: self)
    }

    // MARK: Setup
  
    func configure(viewController: WalletViewController) {
        let interactor: WalletInteractor = WalletInteractor()
        let presenter: WalletPresenter = WalletPresenter()
        let router: WalletRouter = WalletRouter()
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
        view.backgroundColor = .green
    }
  
}

extension WalletViewController: WalletDisplayLogic {
 
}
