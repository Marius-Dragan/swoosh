//
//  LeagueVC.swift
//  swoosh
//
//  Created by Marius Dragan on 10/09/2017.
//  Copyright © 2017 Marius Dragan. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
   
// create ibboutlets for all other buttons so we can make cool new animations to it.
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var womensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(player.desiredSport)
        
    }

    @IBAction func onNextTapped(_ sender: Any) {
            performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
     selectLeague(leagueType: "mens")
        mensBtn.dim()
    }

    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
        womensBtn.dim()
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
        coedBtn.dim()
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
      
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
