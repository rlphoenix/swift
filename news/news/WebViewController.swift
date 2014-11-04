//
//  WebViewController.swift
//  news
//
//  Created by phoenix on 4/11/14.
//  Copyright (c) 2014 leon REN. All rights reserved.
//

import UIKit

class WebViewController:UIViewController{
    
    var detailId:String?,
    detailURL="http://qingbin.sinaapp.com/api/html/",
    webView:UIWebView?
    
    func loadDataSource(){
        var urlString = detailURL+"\(detailId).html",
        url=NSURL.URLWithString(urlString),
        urlRequest = NSURLRequest(URL: NSURL.URLWithString(urlString))
        webView!.loadRequest(urlRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = UIWebView()
        webView!.frame=self.view.frame
        webView!.backgroundColor=UIColor.grayColor()
        self.view.addSubview(webView!)
        
        loadDataSource()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
