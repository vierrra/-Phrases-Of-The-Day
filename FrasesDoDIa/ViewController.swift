//
//  ViewController.swift
//  FrasesDoDIa
//
//  Created by Renato on 1/10/21.
//

import UIKit

class ViewController: UIViewController {
    var messages = ["Ter sucesso é falhar repetidamente, mas sem perder o entusiasmo",
                    "Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos",
                    "Quem sobrevive é o mais disposto a mudança"]

    @IBOutlet weak var messageDayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.generationNumberAleatory()
    }

    @IBAction func newMessageButton(_ sender: Any) {
        self.generationNumberAleatory()
    }
    
    public func generationNumberAleatory() {
        let numberAleatory = arc4random_uniform(3)
        
        messageDayLabel.text = messages[Int(numberAleatory)]
    }
}

