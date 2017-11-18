//
//  ViewController.swift
//  VKAppNew
//
//  Created by  Artem Mazheykin on 04.11.2017.
//  Copyright © 2017 Morodin. All rights reserved.
//

import UIKit
import WebKit

class MainMenuViewController: UIViewController {

    weak var navigator: Navigator!
    @IBOutlet weak var VKAuthWebView: WKWebView!
    weak var systemParametersService: SystemParametersService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MainMenuViewController: WKNavigationDelegate{
    
}

extension URL {
    
    var urlParameters: [String:String] {
        
        var result = [String:String]()
        guard let components = NSURLComponents(url: self, resolvingAgainstBaseURL: false) else {
            return result
        }
        print("!!!!!!!!!!components     \(components)")
        if let fragments = components.fragment?.components(separatedBy: "&") {
            for fragment in fragments {
                let _fragments = fragment.components(separatedBy: "=")
                let key = _fragments[0]
                let value = _fragments[1]
                result[key] = value
            }
        }
        return result
    }
}

