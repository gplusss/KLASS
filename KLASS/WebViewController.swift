//
//  WebViewController.swift
//  KLASS
//
//  Created by Vladimir Saprykin on 17.01.17.
//  Copyright © 2017 Vladimir Saprykin. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webview: UIWebView!
    
    var urlPath = "http://www.klass.com.ua"
    let urlArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.webview.scalesPageToFit = true
        self.webview.contentMode = .scaleAspectFit
        loadWebView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func loadWebView() {
        let requestURL = NSURL(string: urlPath)
        let request = NSURLRequest(url: requestURL as! URL)
        webview.loadRequest(request as URLRequest)
        
    }

}
