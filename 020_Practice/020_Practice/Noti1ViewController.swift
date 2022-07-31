//
//  Noti1ViewController.swift
//  020_Practice
//
//  Created by Mac Pro 15 on 2022/07/30.
//

/*
import UIKit

class Noti1ViewController: UIViewController {

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
                self.sendNotification()
            }
        }
    }
    
    func sendNotification() {
        
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "안녕"
        notificationContent.subtitle = "내이름은 코난"
        //notificationContent.body = "탐정이지"
        notificationContent.body = "탐정이지\(Int.random(in:1...100))"
        notificationContent.badge = 40
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)

        let request = UNNotificationRequest(identifier: "\(Date())", content: notificationContent, trigger: trigger)
        
        notificationCenter.add(request)
    }
}
*/
