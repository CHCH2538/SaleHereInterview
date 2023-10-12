//
//  AchievementInteractor.swift
//  SaleHere Interview
//
//  Created by p.charoensinputthakh on 12/10/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.

protocol AchievementBusinessLogic {

}

protocol AchievementDataStore {

}

class AchievementInteractor: AchievementBusinessLogic, AchievementDataStore {
    var presenter: AchievementPresentationLogic?
    lazy var worker: AchievementWorker? = AchievementWorker()
    
    //​ MARK: Function
  
}
