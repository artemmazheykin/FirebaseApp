//
//  FabrikaImpl.swift
//  VKAppNew
//
//  Created by  Artem Mazheykin on 04.11.2017.
//  Copyright © 2017 Morodin. All rights reserved.
//

import UIKit

class FabrikaImpl: Fabrika{
    
    private let storyboard: Storyboard = StoryboardImpl()
    private var navigator: Navigator!
    private var systemParametersService: SystemParametersService!
    
    private func initDAL(){
        initSystemParametersService()
    }
    
    private func initSystemParametersService(){
        let systemParametersService = SystemParametersServiceImpl()
        systemParametersService.repository = SystemParametersRepositoryImpl()
        self.systemParametersService = systemParametersService
    }
    init(){
        let navigator = NavigatorImpl(fabrika: self)
        self.navigator = navigator
        initDAL()
        navigator.showFirstViewController()
    }
    
    
    func firstViewController() -> UIViewController{
        
        if let navc = storyboard.getViewController(type: .navigationController) as? UINavigationController{
            if navc.viewControllers.count > 0{
                if let mainMenuViewController = navc.viewControllers[0] as? MainMenuViewController{
                    mainMenuViewController.navigator = navigator
                    mainMenuViewController.systemParametersService = systemParametersService
                }
            }
            return navc
        }
        return UIViewController()
        
    }
    
    func testViewController() -> UIViewController{
        return storyboard.getViewController(type: .testViewController)
    }
}


