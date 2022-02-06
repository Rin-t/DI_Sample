//
//  DITests.swift
//  DITests
//
//  Created by Rin on 2022/02/03.
//

import XCTest
@testable import DI

class DITests: XCTestCase {
    let monster = PokemonEntity(name: "ピカチュウ", move: "かみなり", offensivePower: 10, hp: 100)
    let enemy = DigimonEntity(name: "アグモン", move: "メガフレア", offensivePower: 20, hp: 200)

    func testAttackedFromEnemy() {
        let useCase = BattleUseCase(monster: monster, enemy: enemy)
        XCTAssertEqual(useCase.attackFromEnemy(), 80)
    }

    func testAttackToEnemy() {
        let useCase = BattleUseCase(monster: monster, enemy: enemy)
        XCTAssertEqual(useCase.attackToEnemy(), 190)
    }

}
