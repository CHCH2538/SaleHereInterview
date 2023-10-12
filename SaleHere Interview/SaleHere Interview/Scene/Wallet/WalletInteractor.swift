//
//  WalletInteractor.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

protocol WalletBusinessLogic {

}

protocol WalletDataStore {

}

class WalletInteractor: WalletBusinessLogic, WalletDataStore {
    var presenter: WalletPresentationLogic?
    lazy var worker: WalletWorker? = WalletWorker()
    
    //​ MARK: Function
  
}
