//
//  ViewController.swift
//  MentorBook
//
//  Created by 坂本 泉 on 2020/02/10.
//  Copyright © 2020 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel:  UILabel!
    
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "WebS,WebD"))
        
        setUI()
        // Do any additional setup after loading the view.
    }
    
    func setUI(){
        print("setUI",index)
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
        
    }
    @IBAction func mae(){
        if index <= 0{
            index = 2
        }else{
            index = index - 1
        }
        setUI()
    }
    
    @IBAction func tugi(){
        
        
        
        if index >= 2{
            index = 0
        }else{
            index = index + 1
        }
        setUI()
    }
    
}

