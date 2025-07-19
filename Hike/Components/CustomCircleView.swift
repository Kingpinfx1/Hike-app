//
//  CustomCircleView.swift
//  Hike
//
//  Created by kingpin on 6/21/25.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimatedGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonKight
                        ],
                        startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)){
                        isAnimatedGradient.toggle()
                    }
                }
                MotionAnimationView()
        } //: zstack
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
