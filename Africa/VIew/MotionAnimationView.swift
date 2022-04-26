//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Yerkebulan Serikov on 25.04.2022.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - Property
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    // MARK: - Functions
    
    func randomCoordinate(max: CGFloat) -> CGFloat{
        return CGFloat.random(in: 0...max)
    }
    
    func randomSize() -> CGFloat{
        return CGFloat.random(in: 10...300)
    }
    
    func randomScale() -> CGFloat{
        return CGFloat.random(in: 0.1...2.0)
    }
    
    func randomSpeed() -> Double
    {
        return Double.random(in: 0.025...1)
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    // MARK: - Body
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                ForEach(0...randomCircle, id: \.self){ item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale():1)
                        .position(x: randomCoordinate(max: geometry.size.width), y: randomCoordinate(max: geometry.size.height))
                        .animation(Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                    .repeatForever()
                                    .speed(randomSpeed())
                                    .delay(randomDelay())
                                , value: isAnimating
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }//ForEach
            }//ZStack
            .drawingGroup()
            .ignoresSafeArea()
            
        }
    }
}


// MARK: - Preview
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
