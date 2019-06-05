//
//  ViewController.swift
//  hairetuif
//
//  Created by 渡辺航太郎 on 2019/05/28.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit



class Monster {
    var name: String!
    var image: UIImage!
}


class ViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var namelabel: UILabel!
    
    var position: Int = 0
    
    var monster1 = Monster()
    
    var monster2 = Monster()
    
    var monster3 = Monster()
    
    var monsterArray: [Monster] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monster1.name = "コナン"
        monster1.image = UIImage(named: "conan.png")
        
        monster2.image = UIImage(named: "haibara.png")
        monster2.name = "灰原"
        
        monster3.image = UIImage(named: "mitsuhiko.png")
        monster3.name = "光彦"
        
        monsterArray.append(monster1)
        monsterArray.append(monster2)
        monsterArray.append(monster3)
        
        print(monsterArray)
    }
    
   
    
    @IBAction func back() {
        position -= 1
        if position < 0 {
            position = 2
        }
        image.image = monsterArray[position].image
        namelabel.text = monsterArray[position].name
//        image.image = monster.imageArray[position]
//        namelabel.text = monster.nameArray[position]
    }
    
    @IBAction func next() {
        position += 1
        if position > 2 {
            position = 0
        }
        
        image.image = monsterArray[position].image
        namelabel.text = monsterArray[position].name
        
//        image.image = monster.imageArray[position]
//        namelabel.text = monster.nameArray[position]
    }
    
    
    
    


}

