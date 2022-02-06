//
//  BattleUseCase.swift
//  DI
//
//  Created by Rin on 2022/02/06.
//

import Foundation

protocol Monster {
    var name: String { get }
    var move: String { get }
    var hp: Int { get set }
    var offensivePower: Int { get }
}


final class BattleUseCase {

    var monster: Monster
    var enemy: Monster

    init(monster: Monster, enemy: Monster) {
        self.monster = monster
        self.enemy = enemy
    }

    func attackToEnemy() -> Int {
        let restHp = enemy.hp - monster.offensivePower
        enemy.hp = restHp
        return restHp
    }

    func attackFromEnemy() -> Int {
        let restHp = monster.hp - enemy.offensivePower
        monster.hp = restHp
        return restHp
    }
}
