//
//  Noti2ViewController.swift
//  020_Practice
//
//  Created by Mac Pro 15 on 2022/07/30.
//

import UIKit

class Noti2ViewController: UIViewController {

    let notificationCenter = UNUserNotificationCenter.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        requestAuthorization()
    }
    
    @IBAction func sendNotiButton(_ sender: UIButton) {
        requestAuthorization()
    }
    
    
    
    func requestAuthorization() {
        
        let authorizationOptions = UNAuthorizationOptions(arrayLiteral: .badge, .sound, .alert)
        
        notificationCenter.requestAuthorization(options: authorizationOptions) { success, error in
            if success {
                self.sendnotification()
            }
        }
    }
 
    func sendnotification() {
        let notificationContent = UNMutableNotificationContent()
        
        notificationContent.title = "안녕"
        notificationContent.subtitle = "내이름은 코난"
        notificationContent.body = "탐정이야"
        notificationContent.badge = 100
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "\(Date())", content: notificationContent, trigger: trigger)
        
        notificationCenter.add(request)
    }
}
