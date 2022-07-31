//
//  NotiViewController.swift
//  020_Practice2
//
//  Created by Mac Pro 15 on 2022/07/30.
//

import UIKit

class NotiViewController: UIViewController {

        let notificationCenter = UNUserNotificationCenter.current()
        
        override func viewDidLoad() {
            super.viewDidLoad()

            requestAuthorization()
            removeNoti()
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
            let notificationContent2 = UNMutableNotificationContent()
            
            notificationContent2.title = "꺼져"
            notificationContent.title = "안녕"
            notificationContent.subtitle = "내이름은 코난\(Int.random(in: 1...30))"
            notificationContent.body = "탐정이야"
            notificationContent.badge = 100
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let request = UNNotificationRequest(identifier: "a", content: notificationContent, trigger: trigger)
            let request2 = UNNotificationRequest(identifier: "b", content: notificationContent2, trigger: trigger)
            
            notificationCenter.add(request)
            notificationCenter.add(request2)
        }
    
    func removeNoti() {
        let center = UNUserNotificationCenter.current()
        center.removePendingNotificationRequests(withIdentifiers: ["a"])
    }

    }
