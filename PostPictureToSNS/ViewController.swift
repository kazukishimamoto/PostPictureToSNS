//
//  ViewController.swift
//  PostPictureToSNS
//
//  Created by shima on 2018/03/11.
//  Copyright © 2018年 shima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var pictureImage: UIImageView!

    //カメラを起動するをタップすると実行
    @IBAction func cameraButtonAction(_ sender: Any) {
        //カメラが利用可能かチェック
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("カメラは利用できます")
            let imagePickerController = UIImagePickerController()
            
            imagePickerController.sourceType = .camera
            
            imagePickerController.delegate = self
            
            present(imagePickerController, animated: true, completion: nil)
        }else {
            print("カメラは利用できません")
        }
    }
    @IBAction func SNSButtonAction(_ sender: Any) {
    }
    
}

