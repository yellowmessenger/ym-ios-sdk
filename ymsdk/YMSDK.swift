//
//  YMSDK.swift
//  ymsdk
//
//  Created by Rashid Khan on 10/02/18.
//  Copyright © 2018 Yellow Messenger. All rights reserved.
//

import Foundation
import UIKit

public class ChatController: UIViewController, UIWebViewDelegate {
    public var botId:String = ""
    public var botName:String = ""
    public var botPayload:String = ""
    
    var webView:UIWebView!
    var button:UIButton!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        webView = UIWebView(frame: CGRect(x:0, y:0, width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        webView.delegate = self
        view.addSubview(webView)
        var urlString = "https://chat.botplatform.io/mobile/"+botId
        if (botPayload.count > 0) {
            urlString = urlString + "?botPayload=" + botPayload
        }
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }
    }
    
    override public func viewDidAppear(_ animated: Bool) {
        
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func webViewDidStartLoad(_ webView: UIWebView) {
        
    }
}

