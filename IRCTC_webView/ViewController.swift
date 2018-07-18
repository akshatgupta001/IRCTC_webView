//
//  ViewController.swift
//  IRCTC_webView
//
//  Created by Akshat Gupta on 16/07/18.
//  Copyright © 2018 Akshat Gupta. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var backBtn: UIBarButtonItem!
    @IBOutlet weak var frwrdBtn: UIBarButtonItem!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
       self.navigationItem.title = "IRCTC"
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let urlString = "https://www.irctc.co.in/nget/train-search"
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        webView.navigationDelegate = self
        webView.load(request)
       

        
    }
  
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
//        backBtn.isEnabled = webView.canGoBack
        //frwrdBtn.isEnabled = webView.canGoForward
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBAction func frwrdBtnPressed(_ sender: Any) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    
}

