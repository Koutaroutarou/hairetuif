//
//  ViewController.swift
//  hairetuif
//
//  Created by 渡辺航太郎 on 2019/05/28.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var namelabel: UILabel!
    
    var number: Int = 0
    
    let monster = Monster()
    
    
    @IBAction func back() {
        if number == 0 || number == 5 {
            image.image = monster.imageArray[4]
            namelabel.text = monster.nameArray[4]
            number = 1
        } else if number == 1 {
            image.image = monster.imageArray[3]
            namelabel.text = monster.nameArray[3]
            number = 2
        } else if number == 2 {
            image.image = monster.imageArray[2]
            namelabel.text = monster.nameArray[2]
            number = 3
        } else if number == 3 {
            image.image = monster.imageArray[1]
            namelabel.text = monster.nameArray[1]
            number = 4
        } else if number == 4 {
            image.image = monster.imageArray[0]
            namelabel.text = monster.nameArray[0]
            number = 5
        }
        
    }
    
    @IBAction func next() {
        if number == 0 || number == 5 {
            image.image = monster.imageArray[1]
            namelabel.text = monster.nameArray[1]
            number = 4
        } else if number == 4 {
            image.image = monster.imageArray[2]
            namelabel.text = monster.nameArray[2]
            number = 3
        } else if number == 3 {
            image.image = monster.imageArray[3]
            namelabel.text = monster.nameArray[3]
            number = 2
        } else if number == 2 {
            image.image = monster.imageArray[4]
            namelabel.text = monster.nameArray[4]
            number = 1
        } else if number == 1 {
            image.image = monster.imageArray[0]
            namelabel.text = monster.nameArray[0]
            number = 5
        }
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

