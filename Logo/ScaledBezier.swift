//
//  ScaledBezier.swift
//  SwiftLogo
//
//  Created by 이재성 on 2020/07/12.
//  Copyright © 2020 Jaesung Lee. All rights reserved.
//

import SwiftUI

struct ScaledBezier: Shape {
    let bezierPath: UIBezierPath
    
    func path(in rect: CGRect) -> Path {
        let path = Path(bezierPath.cgPath)
        let multiplier = min(rect.width, rect.height)
        let transform = CGAffineTransform(scaleX: multiplier, y: multiplier)
        return path.applying(transform)
    }
}


