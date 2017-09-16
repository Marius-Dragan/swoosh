//
//  SearchVC.swift
//  swoosh
//
//  Created by Marius Dragan on 16/09/2017.
//  Copyright © 2017 Marius Dragan. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var desiredLeagueLbl: UILabel!
    @IBOutlet weak var desiredSkillLbl: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.selectedSkillLevel)
        desiredLeagueLbl.text = player.desiredLeague.uppercased()
        desiredSkillLbl.text = player.selectedSkillLevel.uppercased()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
