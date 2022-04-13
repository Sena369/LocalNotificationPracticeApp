//
//  ViewController.swift
//  LocalNotificationPracticeApp
//
//  Created by 澤田世那 on 2022/04/13.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func localNotificationButton(_ sender: Any) {
        generateLocalNotification()
    }
    
    func generateLocalNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Tittle"
        content.body = "Body"
        content.subtitle = "SubTitle"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "FiveSecond", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

