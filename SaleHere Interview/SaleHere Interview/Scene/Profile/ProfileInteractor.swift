//
//  ProfileInteractor.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

protocol ProfileBusinessLogic {

}

protocol ProfileDataStore {

}

class ProfileInteractor: ProfileBusinessLogic, ProfileDataStore {
    var presenter: ProfilePresentationLogic?
    lazy var worker: ProfileWorker? = ProfileWorker()
    
    //​ MARK: Function
  
}
