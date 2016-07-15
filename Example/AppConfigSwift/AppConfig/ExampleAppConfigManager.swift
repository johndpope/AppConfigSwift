//
//  ExampleAppConfigManager.swift
//  AppConfigSwift Example
//
//  App config: manager class to facilitate app config selection and model definition
//

import UIKit
import AppConfigSwift

class ExampleAppConfigManager : AppConfigBaseManager {

    // --
    // MARK: Singleton instance
    // --
    static let sharedManager: ExampleAppConfigManager = ExampleAppConfigManager()

    
    // --
    // MARK: Methods
    // --
    override func obtainBaseModelInstance() -> AppConfigBaseModel {
        return ExampleAppConfigModel()
    }
    
    static func currentConfig() -> ExampleAppConfigModel {
        return sharedManager.currentConfigInstance() as! ExampleAppConfigModel
    }

}
