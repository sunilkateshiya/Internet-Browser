//
//  ViewController.swift
//  Internet Browser
//
//  Created by iFlame on 6/9/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var url: UITextField!
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        webView.loadRequest(NSURLRequest(url:NSURL(string: "http://google.com")! as URL) as URLRequest)
        
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func search(_ sender: UIButton) {
        
        webView.loadRequest(NSURLRequest(url: NSURL(string: "http://" + url.text! + "/")! as URL) as URLRequest)
        if url.text == "" {
            webView.loadRequest(NSURLRequest(url:NSURL(string: "http://google.com")! as URL) as URLRequest)
            
        }
    }
    
    
    @IBAction func back(_ sender: UIButton) {
        webView.goBack()
        
        
    }
    
    @IBAction func next(_ sender: UIButton) {
        webView.goForward()
    
    }
    
    
    @IBAction func home(_ sender: UIButton) {
        
        webView.loadRequest(NSURLRequest(url:NSURL(string: "http://google.com")! as URL) as URLRequest)
        
        
    }
    
    }

