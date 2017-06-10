//
//  ViewController.swift
//  Internet Browser
//
//  Created by iFlame on 6/9/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var url: UITextField!
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var google: UITextField!
    
    override func viewDidLoad() {
        
        webView.loadRequest(NSURLRequest(url:NSURL(string: "http://google.com")! as URL) as URLRequest)
        
        super.viewDidLoad()
        url.delegate = self
        google.delegate = self
    
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         textField.resignFirstResponder()
        
        if url.text != "" {
    
        webView.loadRequest(NSURLRequest(url: NSURL(string: "https://" + url.text! + "/")! as URL) as URLRequest)
            url.text = ""
        }
        
        else if google.text != "" {webView.loadRequest(NSURLRequest(url: NSURL(string: "https://www.google.co.in/search?q=" + google.text! )! as URL) as URLRequest)
            google.text = ""
            
        }
        
        
      
          textField.resignFirstResponder()
        

        return true
    }
    
    
    @IBAction func back(_ sender: UIButton) {
        
        webView.goBack()
        
    }
    
    @IBAction func next(_ sender: UIButton) {
        
        webView.goForward()
        
    }
    
    @IBAction func home(_ sender: UIButton) {
        
        
        webView.loadRequest(NSURLRequest(url:NSURL(string: "http://google.com")! as URL) as URLRequest)
        url.text = ""
        
    }
    
    @IBAction func reload(_ sender: UIButton) {
        webView.reload()
      
     
        
    }
    
    
}

