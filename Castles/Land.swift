//
//  Land.swift
//  Castles
//
//  Created by Rifaz Iqbal on 3/28/18.
//  Copyright © 2018 Rifaz Iqbal. All rights reserved.
//

import UIKit

enum Angle {
    case incline
    case decline
    case flat
}

class Land: NSObject {
    
    //When angle switches from incline to decline or vice versa we know we need to build another castle
    var currentAngle: Angle!
    var heights = [Int]()
    
    func getAngle(currentHeight: Int, nextHeight: Int) -> Angle {
        if currentHeight - nextHeight == 0 {
            return .flat
        }
        
        else if currentHeight - nextHeight > 0 {
            return .decline
        }
        
        else {
            return .incline
        }
    }
    
    func totalCastles() -> Int {
        
        var totalCastles = 0
        
        for (index, height) in heights.enumerated() {
            if index < heights.count - 1 {
//                print(height)
                let nextAngle = getAngle(currentHeight: height, nextHeight: heights[index + 1])
                if currentAngle != nextAngle {
                    totalCastles += 1
                    currentAngle = nextAngle
                }
            }
        }
        
        return totalCastles
    }
}
