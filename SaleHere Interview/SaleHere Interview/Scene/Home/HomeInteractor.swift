//
//  HomeInteractor.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

protocol HomeBusinessLogic {

}

protocol HomeDataStore {

}

class HomeInteractor: HomeBusinessLogic, HomeDataStore {
    var presenter: HomePresentationLogic?
    lazy var worker: HomeWorker? = HomeWorker()
    
    //​ MARK: Function
  
}
