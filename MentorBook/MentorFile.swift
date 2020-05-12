//
//  MentorFile.swift
//  MentorBook
//
//  Created by esaki yuki on 2020/05/12.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit

class Mentor {
    
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
    
}
