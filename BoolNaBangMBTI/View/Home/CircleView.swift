//
//  CircleView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/08.
//

// 참고 사이트 https://www.youtube.com/watch?v=aQ4lid4-Kyc/

import SwiftUI

struct CircleView: View {
    
    
    var personStore: PersonStore
    //일단 여기에 데이텋
    //단계마다 해당하는 사람 수
    var caseNumber = [2,1,2,2,1]
    
    
    
    var randomFloat: CGFloat {
        .random(in: 0.0 ... 2.0)
    }

    var body: some View {
        ZStack{
            
            Color(.white).ignoresSafeArea()
            
            //순서는 밖에 원->안에 원
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2

                
                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
                    .rotationEffect(.degrees(-180))
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay{
                        ForEach(0..<caseNumber[4], id:\.self) { i in
                            let randomAngle = randomFloat * .pi

                            Path { path in
                                path.move(to: CGPoint(x: localFrame.midX, y: localFrame.midY))
                                
                                path.addLine(to: CGPoint(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle)))
                            }
                            .stroke(.red, lineWidth: 2)
                            /*
                            Circle()
                                .stroke(Color.red,lineWidth:5)
                                .frame(width:15)
                                .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                             */
                            
                            Text("\(personStore.casePerson[4][i].name)")
                                .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                            
                            

                        }
                         
                    }
            
                
            }
            .frame(width: 375)
            
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2

                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
//                    .rotationEffect(.degrees(-180)) //여기서는 필요없는듯.
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay{
                        ForEach(0..<caseNumber[3], id:\.self) { i in
                            let randomAngle = randomFloat * .pi

                            Path { path in
                                path.move(to: CGPoint(x: localFrame.midX, y: localFrame.midY))
                                
                                path.addLine(to: CGPoint(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle)))
                            }
                            .stroke(.black, lineWidth: 2)
                            /*
                            Circle()
                                .stroke(Color.black,lineWidth:5)
                                .frame(width:15)
                                .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                             */
                            
                            Text("\(personStore.casePerson[3][i].name)")
                                .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                            
                        }
                         
                    }
            
                
            }
            .frame(width: 300)
            
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2
//                let randomAngle = randomFloat * .pi

                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
                    .rotationEffect(.degrees(-180))
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                
                //밑에 숫자는
                ForEach(0..<caseNumber[2], id:\.self) { i in
                    let randomAngle = randomFloat * .pi

                    Path { path in
                        path.move(to: CGPoint(x: localFrame.midX, y: localFrame.midY))
                        
                        path.addLine(to: CGPoint(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle)))
                    }
                    .stroke(.yellow, lineWidth: 2)
                    
                    /*
                     Circle()
                     .stroke(Color.yellow,lineWidth:5)
                     .frame(width:15)
                     .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                    */
                    Text("\(personStore.casePerson[2][i].name)")
                        .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                    
                    
                }
//                    .overlay{
//                        ForEach(0..<3, id:\.self) { _ in
//                            Path { path in
//                                path.move(to: CGPoint(x: localFrame.midX, y: localFrame.midY))
//
//                                path.addLine(to: CGPoint(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle)))
//                            }
//                            .stroke(.yellow, lineWidth: 5)
//
//                             Circle()
//                             .stroke(Color.yellow,lineWidth:5)
//                             .frame(width:15)
//                             .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
//
//
//                        }
                       
                         
//                    }
            
                
            }
            .frame(width: 225)
            
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2

                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
                    .rotationEffect(.degrees(-180))
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay{
                        ForEach(0..<caseNumber[1], id:\.self) { i in
                            let randomAngle = randomFloat * .pi
                            Path { path in
                                path.move(to: CGPoint(x: localFrame.midX, y: localFrame.midY))
                                
                                path.addLine(to: CGPoint(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle)))
                            }
                            .stroke(.green, lineWidth: 2)
                            /*
                            Circle()
                                .stroke(Color.green,lineWidth:5)
                                .frame(width:15)
                                .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                             */
                            
                            Text("\(personStore.casePerson[1][i].name)")
                                .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                            
                        }
                    }
            
                
            }
            .frame(width: 150)
            
            GeometryReader { geo in
                
                let localFrame = geo.frame(in: .local)
                let diameter = geo.size.width
                let radius = diameter / 2

                Circle()
                    .stroke(Color.gray.opacity(0.4),lineWidth: 5)
                    .rotationEffect(.degrees(-180))
                    .frame(width: diameter)
                    .position(x: localFrame.midX, y: localFrame.midY)
                    .overlay{
                        ForEach(0..<caseNumber[0], id:\.self) { i in
                            let randomAngle = randomFloat * .pi
                            
                            Path { path in
                                path.move(to: CGPoint(x: localFrame.midX, y: localFrame.midY))
                                
                                path.addLine(to: CGPoint(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle)))
                            }
                            .stroke(.blue, lineWidth: 2)
                            /*
                            Circle()
                                .stroke(Color.blue,lineWidth:5)
                                .frame(width:15)
                                .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                             */
                            Text("\(personStore.casePerson[0][i].name)")
                                .position(x: radius * (1 - cos(randomAngle)), y: geo.size.height / 2 - radius * sin(randomAngle))
                            
                        }
                         
                    }
            
                
            }
            .frame(width: 75)
        }
    
    
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(personStore: PersonStore())
    }
}
