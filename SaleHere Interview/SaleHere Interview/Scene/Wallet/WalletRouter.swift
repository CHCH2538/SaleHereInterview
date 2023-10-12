//
//  WalletRouter.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

protocol WalletRoutingLogic {

}

protocol WalletDataPassing {
    var dataStore: WalletDataStore? { get }
}

class WalletRouter: WalletRoutingLogic, WalletDataPassing {
    weak var viewController: WalletViewController?
    var dataStore: WalletDataStore?
  
    // MARK: Routing
  
}
