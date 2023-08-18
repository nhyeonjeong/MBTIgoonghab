//
//  ResultLoveView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI

struct ResultRomanticView: View {
    
    @ObservedObject var opponentStore: OpponentStore
    // 데이터 완성되면 각 단계별에 맞는
    // 사람 이름 넣기
    
    // Divider 넣으면 디자인 이상해질거 같아서
    // 일단 빼놓고 나중에 의견 물어보기
    
    // NavigationTitle 물어보기
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                
                Group {
                    
                    Image("RomanticFirst")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    HStack{
                        Text("1단계 👉  ")
                        ForEach(opponentStore.stageOneList[0]) { member in
                            Text("\(member.oppName)")
                            
                        }
                    }
                    
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
//                    Divider()
                }
                
                Group {
                    Image("RomanticSecond")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    HStack{
                        Text("2단계 👉  ")
                        ForEach(opponentStore.stageOneList[1]) { member in
                            Text("\(member.oppName)")
                        }
                    }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
//                    Divider()
                }
                
                Group {
                    Image("RomanticThird")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    HStack{
                        Text("3단계 👉  ")
                        ForEach(opponentStore.stageOneList[2]) { member in
                            Text("\(member.oppName)")
                        }
                    }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
//                    Divider()
                }
                
                Group {
                    Image("RomanticFourth")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    HStack{
                        Text("4단계 👉  ")
                        ForEach(opponentStore.stageOneList[3]) { member in
                            Text("\(member.oppName)")
                        }
                    }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
//                    Divider()
                }
                
                Group {
                    Image("RomanticFifth")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    HStack{
                        Text("5단계 👉  ")
                        ForEach(opponentStore.stageOneList[4]) { member in
                            Text("\(member.oppName)")
                        }
                    }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                }
            }
        }
    }
    
    
}

struct ResultRomanticView_Previews: PreviewProvider {
    static var previews: some View {
        ResultRomanticView(opponentStore: OpponentStore())
    }
}
