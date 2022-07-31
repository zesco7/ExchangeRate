//
//  WebViewController.swift
//  019_WebView_Assignment
//
//  Created by Mac Pro 15 on 2022/07/31.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    static var identifier = "WebViewController"
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var closeButton: UIBarButtonItem!
    @IBOutlet weak var gobackButtonClicked: UIBarButtonItem!
    @IBOutlet weak var reloadButtonClicked: UIBarButtonItem!
    @IBOutlet weak var goforwardButtonClicked: UIBarButtonItem!
    
    let mainURL = "https://www.naver.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backItem = UIBarButtonItem()
        backItem.title = "fuck"
        navigationItem.backBarButtonItem = backItem
        closeButton.image = UIImage(systemName: "xmark")
        gobackButtonClicked.image = UIImage(systemName: "arrow.left")
        reloadButtonClicked.image = UIImage(systemName: "arrow.clockwise")
        goforwardButtonClicked.image = UIImage(systemName: "arrow.right")
        
        openWebPage(url: mainURL)
        searchBar.delegate = self
    }
    
    func openWebPage(url: String) {
        guard let url = URL(string: url) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

extension WebViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        openWebPage(url: searchBar.text!)
    }
}
