//
//  SportsVC.swift
//  swoosh
//
//  Created by Marius Dragan on 17/09/2017.
//  Copyright © 2017 Marius Dragan. All rights reserved.
//

import UIKit

class SportsVC: UIViewController {

    var player: Player!
    @IBOutlet weak var footballBtn: BorderButton!
    @IBOutlet weak var basketballBtn: BorderButton!
    @IBOutlet weak var voleiBtn: BorderButton!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "leagueVCSegue", sender: self)
    }
    
    @IBAction func onFootballTapped(_ sender: Any) {
        selectSports(SportType: "Football")
        footballBtn.dim()
    }
    @IBAction func onBasketballTapped(_ sender: Any) {
        selectSports(SportType: "Basketball")
        basketballBtn.dim()
    }
    @IBAction func onVoleiTapped(_ sender: Any) {
        selectSports(SportType: "Volei")
        voleiBtn.dim()
    }
    
    func selectSports(SportType: String) {
        player.desiredSport = SportType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let leagueVC = segue.destination as? LeagueVC {
            leagueVC.player = player
        }
    }
    
}
