//
//  CircleView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/08.
//

// 참고 사이트 https://www.youtube.com/watch?v=aQ4lid4-Kyc/

import SwiftUI

struct CircleView: View {
    
    @State private var progress:CGFloat = .zero
    
    var body: some View {
        ZStack{
            
            Color(.blue).ignoresSafeArea()
            
            
            // 먼지
            ForEach(1..<100, id: \.self) { index in
                
                let xPosition =
                Array(1...Int(UIScreen.main.bounds.width))
                    .randomElement() ?? 0
                let yPosition =
                Array(1...Int(UIScreen.main.bounds.width))
                    .randomElement() ?? 0
                
                Circle()
                    .fill(.white)
                    .frame(width: 3)
                    .position(x: CGFloat(xPosition), y: CGFloat(yPosition))
                
            }
            
            
            
            
            
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2
                let angle = progress * .pi
                
                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
                    .rotationEffect(.degrees(-90)) // 값의 차이가 어떻게 달라지는지?
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay{
                        
                        Circle()
                            .stroke(Color.white,lineWidth:5)
                            .frame(width:30)
                            .position(x: radius * (1 - cos(angle)), y: geo.size.height / 2 - radius * sin(angle))
                    }
                
            }
            .frame(width: 420)
            
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2
                let angle = progress * .pi
                
                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
                    .rotationEffect(.degrees(-180))
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay{
                        
                        Circle()
                            .stroke(Color.white,lineWidth:5)
                            .frame(width:30)
                            .position(x: radius * (1 - cos(angle)), y: geo.size.height / 2 - radius * sin(angle))
                    }
                
            }
            .frame(width: 300)
            
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2
                let angle = progress * .pi
                
                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
                    .rotationEffect(.degrees(-180))
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay{
                        
                        Circle()
                            .stroke(Color.white,lineWidth:5)
                            .frame(width:30)
                            .position(x: radius * (1 - cos(angle)), y: geo.size.height / 2 - radius * sin(angle))
                    }
                
            }
            .frame(width: 150)
            
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2
                let angle = progress * .pi
                
                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
                    .rotationEffect(.degrees(-180))
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay{
                        
                        Circle()
                            .stroke(Color.white,lineWidth:5)
                            .frame(width:30)
                            .position(x: radius * (1 - cos(angle)), y: geo.size.height / 2 - radius * sin(angle))
                    }
                
            }
            .frame(width: 80)
            
            
            
            Circle()
                .fill(.gray.opacity(0.4))
                .frame(width: 301)
            
            Circle()
                .fill(.gray.opacity(0.5))
                .frame(width: 280)
            
            GeometryReader { reader in
                
                let localFrame = reader.frame(in: .local)
                
                Circle()
                    .fill(.white.gradient.opacity(0.3))
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay {
                        
                        ZStack{
                            
                            Circle()
                                .fill(.gray.opacity(0.2))
                                .frame(width: 60)
                                .position(x: localFrame.midX - 60 ,y:localFrame.midY - 60)
                            
                            Circle()
                                .fill(.gray.opacity(0.2))
                                .frame(width: 40)
                                .position(x: localFrame.midX - 90 ,y:localFrame.midY + 20)
                            
                            Circle()
                                .fill(.gray.opacity(0.2))
                                .frame(width: 25)
                                .position(x: localFrame.midX - 40 ,y:localFrame.midY - 20)
                            
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                    }
                
            }
            .frame(width: 250)
            
      
            
        }
        .onAppear {
            
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {
                timer in
                withAnimation {
                    progress += 0.04
                }
            }
            
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
