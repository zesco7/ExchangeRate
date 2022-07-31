//
//  Noti2ViewController.swift
//  020_Practice2
//
//  Created by Mac Pro 15 on 2022/07/30.
//

import UIKit

class Noti2ViewController: UIViewController {

    let notificationCenter = UNUserNotificationCenter.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    func requestAuthorization() {
        let authorizationOptions = UNAuthorizationOptions(arrayLiteral: .badge, .sound, .alert)
        notificationCenter.requestAuthorization(options: authorizationOptions) { success, error in
            if success {
                self.sendNotification()
            }
        }
    }
    
    func sendNotification() {
        let notificationContent = UNMutableNotificationContent()
        
        notificationContent.title
        notificationContent.subtitle
        notificationContent.body
        notificationContent.badge
        
        var dateComponent = DateComponents()
        dateComponent.minute = 10
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: false)
        
        let request = UNNotificationRequest(identifier: "\(Date())", content: notificationContent, trigger: trigger)
        
        notificationCenter.add(request)
    }

}





























