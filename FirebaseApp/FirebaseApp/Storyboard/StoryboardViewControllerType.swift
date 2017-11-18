//
//  RouterViewControllerType.swift
//  VKAppNew
//
//  Created by  Artem Mazheykin on 04.11.2017.
//  Copyright © 2017 Morodin. All rights reserved.
//

import Foundation

enum StoryboardViewControllerType:Int {
    case navigationController, mainMenuViewController, testViewController
    
    var identifier: String {
        
        switch self {
            
        case .navigationController:
            return "NavigationController"
            
        case .mainMenuViewController:
            return "MainMenuViewController"
            
        case .testViewController:
            return "TestViewController"
            
        }
    }
}
