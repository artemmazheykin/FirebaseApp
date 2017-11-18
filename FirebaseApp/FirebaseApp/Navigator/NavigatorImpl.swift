//
//  NavigatorImpl.swift
//  VKAppNew
//
//  Created by  Artem Mazheykin on 04.11.2017.
//  Copyright © 2017 Morodin. All rights reserved.
//

import UIKit

class NavigatorImpl: Navigator{
    
    let router: Router = RouterImpl()
    private weak var fabrika: Fabrika!
    
    init(fabrika: Fabrika){
        self.fabrika = fabrika
    }
    
    func showFirstViewController() {
        let vc = fabrika.firstViewController()
        _ = router.presentViewController(nextViewController: vc)
    }
    
    
    func mainViewController(didTappedButton from: UIViewController){
        
        let vcon = fabrika.testViewController()
        _ = router.pushViewController(nextViewController: vcon)

    }

    
    
    
    
    
}
