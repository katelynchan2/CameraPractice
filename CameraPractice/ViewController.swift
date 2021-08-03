//
//  ViewController.swift
//  CameraPractice
//
//  Created by Lily Chan on 8/3/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var Imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseImage(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController() imagePickerController.delegate = self
        
        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a Source", preferredStyle: . actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default,handler: {(action:UIAlertAction) in imagePickerController.sourceType = .camera
            self.present(imagePickerController,animated: true, completion: nil)
        }))
    }
    
}

