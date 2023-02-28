//
//  DetailViewController.swift
//  Sasuke
//
//  Created by keenan ray on 2/25/23.
//

import UIKit


class DetailViewController: UIViewController {
    var Info : Info?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let Info  = Info {
            newName.text = Info.name
            newImage.image = Info.image
            newText.text = Info.info
            newbckrnd.image = Info.backround
        
            
        }

        newTextHC.constant = self.newText.contentSize.height
    }
    
    
    
    @IBOutlet weak var newName: UILabel!
    
    @IBOutlet weak var newImage: UIImageView!
    
    
    @IBOutlet weak var newText: UITextView!
    
    @IBOutlet weak var newbckrnd: UIImageView!
    @IBOutlet weak var newTextHC:NSLayoutConstraint!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
