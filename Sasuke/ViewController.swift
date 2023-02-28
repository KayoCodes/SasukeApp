//
//  ViewController.swift
//  Sasuke
//
//  Created by keenan ray on 2/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    let orginStory = Info(name: "Orgin Story", image: UIImage(named: "orgin")!, info: "I was born in the hidden Leaf village. At a young age my clan, The Uchiha Clan was massacred by my older brother Itachi. That day I swore to get my revenge for my clan... ", backround:UIImage(named: "b2")!)
    let power = Info(name: "Powers", image: UIImage(named: "powers")!, info: "Some of my powers include: Fireball Jutsu, Kirin, Chidori, Susano, Eternal Mangyekyo Sharingan, and Rinnegan", backround:UIImage(named: "b3")!)
    let family = Info(name: "My Family",  image: UIImage(named: "family")!, info: "In my adult years, I have a wife Sakura and a daughter named Sarada. Im not home very often because Im out protecting the village as the shadow Hokage", backround: UIImage(named: "b1")!);
    
    
    var information : [Info] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        information = [orginStory, power, family]
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapInfo(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.Info = information[0]
            } else if tappedView.tag == 1 {
                detailViewController.Info = information[1]
            } else if tappedView.tag == 2 {
                detailViewController.Info = information[2]
            }
             else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }
}

