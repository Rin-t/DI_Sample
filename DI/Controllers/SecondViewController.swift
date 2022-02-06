//
//  SecondViewController.swift
//  DI
//
//  Created by Rin on 2022/02/04.
//

import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet private weak var playerMonsterLabel: UILabel!
    @IBOutlet private weak var enemyMonsterNameLabel: UILabel!
    @IBOutlet private weak var playerMonsterHpLabel: UILabel!
    @IBOutlet private weak var enemyMonsterHpLabel: UILabel!

    private let monster: Monster
    private let enemy = DigimonEntity(name: "アグモン",
                                      move: "メガフレア",
                                      offensivePower: 10, hp: 100)
    private var useCase: BattleUseCase?

    init(monster: Monster) {
        self.monster = monster
        super.init(nibName: nil, bundle: nil)
        useCase = BattleUseCase(monster: monster, enemy: enemy)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        playerMonsterLabel.text = monster.name
        playerMonsterHpLabel.text = String(monster.hp)
        enemyMonsterNameLabel.text = enemy.name
        enemyMonsterHpLabel.text = String(enemy.hp)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBAction private func tappedAttackButton(_ sender: UIButton) {
        let hp = useCase?.attackToEnemy()
        enemyMonsterHpLabel.text = String(hp ?? 0)
    }

    @IBAction private func tappedIsAttackedButton(_ sender: UIButton) {
        let hp = useCase?.attackFromEnemy()
        playerMonsterHpLabel.text = String(hp ?? 0)
    }

}
