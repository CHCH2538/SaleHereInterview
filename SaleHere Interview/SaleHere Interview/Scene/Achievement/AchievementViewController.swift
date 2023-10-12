//
//  AchievementViewController.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol AchievementDisplayLogic: AnyObject {

}

class AchievementViewController: UIViewController {
    var interactor: AchievementBusinessLogic?
    var router: (AchievementRoutingLogic & AchievementDataPassing)?
    
    // MARK: IBOutlet

    // MARK: Object lifecycle
  
    override public func awakeFromNib() {
        super.awakeFromNib()
        configure(viewController: self)
    }

    // MARK: Setup
  
    func configure(viewController: AchievementViewController) {
        let interactor: AchievementInteractor = AchievementInteractor()
        let presenter: AchievementPresenter = AchievementPresenter()
        let router: AchievementRouter = AchievementRouter()
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
        view.backgroundColor = .blue
    }
  
}

extension AchievementViewController: AchievementDisplayLogic {
 
}
