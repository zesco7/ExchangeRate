//
//  WebViewController.swift
//  019_Practice
//
//  Created by Mac Pro 15 on 2022/07/30.
//

import UIKit
import WebKit
class WebViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    //webkit import해줘야함
    @IBOutlet weak var webView: WKWebView!
    
    var destinationURL = "https://www.apple.com"
    override func viewDidLoad() {
        super.viewDidLoad()

        openWebPage(url: destinationURL)
        
        //extension 생성에 따른 delegate 연결
        searchBar.delegate = self
    }
    
    //웹페이지 오픈함수 생성
    //guard문으로 처리
    func openWebPage(url: String) {
        guard let url = URL(string: url) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
                
    }
}

//익스텐션으로 서치바 검색시 다른 웹사이트 이동 기능 추가

extension WebViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        openWebPage(url: searchBar.text!)
    }
}
