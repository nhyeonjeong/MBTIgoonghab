//
//  ResultLoveView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI

struct ResultRomanticView: View {
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
                    Text("1단계 👉 어쩌구")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
//                    Divider()
                }
                
                Group {
                    Image("RomanticSecond")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    Text("2단계 👉 어쩌구")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
//                    Divider()
                }
                
                Group {
                    Image("RomanticThird")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    Text("3단계 👉 어쩌구")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
//                    Divider()
                }
                
                Group {
                    Image("RomanticFourth")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    Text("4단계 👉 어쩌구")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
//                    Divider()
                }
                
                Group {
                    Image("RomanticFifth")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    Text("5단계 👉 어쩌구")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                }
            }
        }
    }
}

struct ResultRomanticView_Previews: PreviewProvider {
    static var previews: some View {
        ResultRomanticView()
    }
}
