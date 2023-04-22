//
//  ViewController.swift
//  TakeAPicture
//
//  Created by Ruoxin Wang on 4/21/23.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func takeAPictureAction(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Take a picture", message: "Something", preferredStyle: .alert)
        
        let carmeraAction = UIAlertAction(title: "Camera", style: .default) { action in
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerController.SourceType.camera
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }
            
        }
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { action in
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }

            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .default) { action in
            print("Cancel")
            
        }
        
        actionSheet.addAction(carmeraAction)
        actionSheet.addAction(photoLibraryAction)
        actionSheet.addAction(cancel)
        
        self.present(actionSheet, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imgView.image = image
        }
        
        picker.dismiss(animated: true)
    }
}

