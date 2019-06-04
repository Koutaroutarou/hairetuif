//
//  ViewController.swift
//  hairetuif
//
//  Created by 渡辺航太郎 on 2019/05/28.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit



class Monster {
    
    var nameArray: [String] = ["コナン", "あゆみちゃん", "元太くん", "光彦", "灰原"]
    
    var imageArray: [UIImage] = [UIImage(named: "conan.png")!,
                                 UIImage(named: "ayumi.png.jpg")!,
                                 UIImage(named: "genta.png.jpg")!,
                                 UIImage(named: "mitsuhiko.png")!,
                                 UIImage(named: "haibara.png")!
                                ]
}


class ViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var namelabel: UILabel!
    
    var position: Int = 0
    
    let monster = Monster()
    
    
    @IBAction func back() {
        position -= 1
        if position < 0 {
            position = 4
        }
        image.image = monster.imageArray[position]
        namelabel.text = monster.nameArray[position]
    }
    
    @IBAction func next() {
        position += 1
        if position > 4 {
            position = 0
        }
        image.image = monster.imageArray[position]
        namelabel.text = monster.nameArray[position]
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

