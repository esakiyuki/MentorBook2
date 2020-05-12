//
//  ViewController.swift
//  MentorBook
//
//  Created by esaki yuki on 2020/05/12.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArrey: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var Index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArrey.append(Mentor(name:"ながた", imageName: "nagata.jpg", course: "iphone"))
        mentorArrey.append(Mentor(name:"りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArrey.append(Mentor(name:"たいてぃ", imageName: "taithi.jpg", course: "webD"))
        
        setUI()
        
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
    
    func setUI() {
        imageView.image = mentorArrey[Index].getImage()
        nameLabel.text = mentorArrey[Index].name
        courseLabel.text = mentorArrey[Index].course
    }
    
    @IBAction func mae() {
        Index = Index - 1
        setUI()
    }
    
    @IBAction func tugi() {
        Index = Index + 1
        setUI()
    }


}

