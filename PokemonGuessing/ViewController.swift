//
//  ViewController.swift
//  PokemonGuessing
//
//  Created by David Lin on 10/28/19.
//  Copyright © 2019 David Lin. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pokeball0: UIButton!
    
    @IBOutlet weak var pokeball1: UIButton!
    
    @IBOutlet weak var pokeball2: UIButton!
    
    @IBOutlet weak var pokeball3: UIButton!
    
    @IBOutlet weak var guessPokemon: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func randomPokeball(_ sender: UIButton) {
        let pokemonArray: NSArray = ["PIKACHU", "SQUIRTLE", "BULBASAUR", "CHARMANDER"]
        let range: UInt32 = UInt32(pokemonArray.count)
        let randomNumber = Int(arc4random_uniform(range))
        let pokemonChoice = pokemonArray.object(at: randomNumber)
        self.guessPokemon.text = pokemonChoice as? String
        //https://stackoverflow.com/questions/31519708/how-do-i-get-a-label-to-display-random-text-when-a-button-is-pressed-swift/31520512#31520512
        
        
        pokeball0.setImage(UIImage(named:"pokeball"), for: .normal)
        pokeball1.setImage(UIImage(named:"pokeball"), for: .normal)
        pokeball2.setImage(UIImage(named:"pokeball"), for: .normal)
        pokeball3.setImage(UIImage(named:"pokeball"), for: .normal)
        
        
    }
    
    
    @IBAction func pokeball(_ sender: UIButton) {
        let randomVariable = Int.random(in: 0...3)
        print(randomVariable)
        switch randomVariable {
        case 0:
            sender.setImage(UIImage(named:"pikachu"), for: .normal)
        case 1:
            sender.setImage(UIImage(named:"charmander"), for: .normal)
        case 2:
            sender.setImage(UIImage(named:"bulbasaur"), for: .normal)
        default:
            sender.setImage(UIImage(named:"squirtle"), for: .normal)
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
}

