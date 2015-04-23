//
//  Spike.swift
//  jotajota
//
//  Created by Jose Alcalá-Correa on 23/04/15.
//  Copyright (c) 2015 XING. All rights reserved.
//

import UIKit
import SpriteKit

class Spike: SKSpriteNode {
    init() {
        let radius : CGFloat = 20

        let texture = SKTexture(imageNamed:"spike")
        super.init(texture: texture, color: nil, size: CGSizeMake(radius*2, radius*2))
        self.physicsBody = SKPhysicsBody(circleOfRadius: radius)
        self.physicsBody?.dynamic = false

        self.physicsBody?.categoryBitMask = SpikeCategory
        self.physicsBody?.contactTestBitMask = BallCategory
        self.physicsBody?.collisionBitMask = BallCategory
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
