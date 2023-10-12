//
//  AchievementRouter.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol AchievementRoutingLogic {

}

protocol AchievementDataPassing {
    var dataStore: AchievementDataStore? { get }
}

class AchievementRouter: AchievementRoutingLogic, AchievementDataPassing {
    weak var viewController: AchievementViewController?
    var dataStore: AchievementDataStore?
  
    // MARK: Routing
  
}
