//
//  SkillVC.swift
//  swoosh
//
//  Created by Marius Dragan on 10/09/2017.
//  Copyright © 2017 Marius Dragan. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var finishBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.desiredLeague)
    }
    @IBAction func unwindFromTheSearchVC(unwindSegue: UIStoryboardSegue) {
    }
    
    @IBAction func onFinishTapped(_ sender: Any) {
        performSegue(withIdentifier: "SearchVCSegue", sender: self)
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectedSkill(skillLevel: "Beginner")
        finishBtn.wiggle()
        //print(player.selectedSkillLevel)
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectedSkill(skillLevel: "Baller")
        finishBtn.wiggle()
        //print(player.selectedSkillLevel)
    }
    
    func selectedSkill(skillLevel: String) {
        player.selectedSkillLevel = skillLevel
        finishBtn.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let searchVC = segue.destination as? SearchVC {
            searchVC.player = player
        }
    }

}
