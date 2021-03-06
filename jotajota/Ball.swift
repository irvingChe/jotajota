//
//  Ball.swift
//  jotajota
//
//  Created by Jose Alcalá-Correa on 23/04/15.
//  Copyright (c) 2015 XING. All rights reserved.
//

import UIKit
import SpriteKit



class Ball: SKSpriteNode {
    init() {
        let radius : CGFloat = 22

        let texture = SKTexture(imageNamed:"ball")
        super.init(texture: texture, color: .clear, size: CGSize(width: radius*2, height: radius*2))
        self.name = "ball"
        self.physicsBody = SKPhysicsBody(circleOfRadius: radius)
        self.physicsBody?.friction = 0.0
        self.physicsBody?.restitution = 0.75

        self.physicsBody?.categoryBitMask = BallCategory
        self.physicsBody?.collisionBitMask = CollidableCategory
        self.physicsBody?.contactTestBitMask = CollidableCategory
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
