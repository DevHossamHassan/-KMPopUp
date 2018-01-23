//
//  KMPoUp.swift
//  KMPopUp
//
//  Created by Kirollos Maged Sawerous on 1/23/18.
//

import Foundation


public class KMPoUp {
    
    public static func DoneAction(controller : UIViewController , message: String = "",image : UIImage ,duration: Double = 1.0) {
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "KMPoUpViewController") as! KMPoUpViewController
        popUpVC.message = message
        popUpVC.duration = duration
        popUpVC.messageImage = image
        controller.addChildViewController(popUpVC)
        popUpVC.view.frame = controller.view.frame
        controller.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParentViewController: controller)
        
    }
    
}