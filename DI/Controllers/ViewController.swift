//
//  ViewController.swift
//  DI
//
//  Created by Rin on 2022/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var moveTextField: UITextField!
    @IBOutlet private weak var hpTextField: UITextField!
    @IBOutlet private weak var offensivePowerTextField: UITextField!

    @IBAction private func tappedButton(_ sender: UIButton) {
        let name = nameTextField.text ?? ""
        let move = moveTextField.text ?? ""
        let hp = Int(hpTextField.text ?? "") ?? 100
        let offensivePower = Int(offensivePowerTextField.text ?? "") ?? 10
        let nextVC = SecondViewController(monster: PokemonEntity(name: name, move: move, offensivePower: offensivePower, hp: hp))
        show(nextVC, sender: nil)
    }

}

