//
//  LinkViewController.swift
//  019_WebView_Assignment
//
//  Created by Mac Pro 15 on 2022/07/31.
//

import UIKit

class LinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func linkButtonClicked(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: WebViewController.identifier) as! WebViewController

        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
}
