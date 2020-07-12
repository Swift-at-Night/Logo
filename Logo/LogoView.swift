//
//  LogoView.swift
//  SwiftLogo
//
//  Created by 이재성 on 2020/07/12.
//  Copyright © 2020 Jaesung Lee. All rights reserved.
//

import SwiftUI

struct LogoView: View {
    let gradient = Gradient(colors: [.init(UIColor(red: 0, green: 232 / 255, blue: 1.0, alpha: 1.0)), .init(UIColor(red: 1, green: 0, blue: 247 / 255, alpha: 1.0))])
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Swift @ Night")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .shadow(color: .white, radius: 1.0)
                    .padding(.bottom, 32)
                
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                    .frame(width: 200, height: 200)
                    .mask(
                        ScaledBezier(bezierPath: .logo) .stroke(lineWidth: 5)
                            .shadow(color: .white,
                                    radius: 4.0)
                )
            }
        }
    }
}
