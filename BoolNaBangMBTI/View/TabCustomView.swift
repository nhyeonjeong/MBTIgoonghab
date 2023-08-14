//
//  TabCustomView.swift
//  BoolNaBangMBTI
//
//  Created by 김종찬 on 2023/08/14.
//

import SwiftUI

struct TabCustomView: View {
    
    @Binding var tabBarIndex: Int
    
    var body: some View {
        HStack {
            Spacer()
            
            // 0번 버튼
            Button {
                tabBarIndex = 0
            } label: {
                VStack {
                    // 선택할때랑 안할때랑 이미지 구분 해주기
                    Image(systemName: tabBarIndex == 0 ? "person.line.dotted.person.fill" : "person.line.dotted.person")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    Text("Community")
                        .font(.system(size: 10))
                }
            }
            // 선택한 거 아닐때 색 죽이기
            .foregroundColor(Color.indigo.opacity(tabBarIndex == 0 ? 1 : 0.1))
            
            Spacer()

            // 1번 버튼
            Button {
                tabBarIndex = 1
            } label: {
                VStack {
                    Image(systemName: tabBarIndex == 1 ? "house.fill" : "house")
                        .font(.largeTitle)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
//                        .background(.blue)
                        .clipShape(Circle())
                    
                    Text("Home")
                        .font(.system(size: 10))
                }
            }
            // 가운데 버튼 Y축 자리 교정
            .offset(y: -10)
            .foregroundColor(Color.indigo.opacity(tabBarIndex == 1 ? 1 : 0.1))
            
            Spacer()
            
            // 2번 버튼
            Button {
                tabBarIndex = 2
            } label: {
                VStack {
                    Image(systemName: tabBarIndex == 2 ? "person.crop.circle.fill" : "person.crop.circle")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    Text("My Page")
                        .font(.system(size: 10))
                }
            }
            .foregroundColor(Color.indigo.opacity(tabBarIndex == 2 ? 1 : 0.1))
            
            Spacer()
        }
        .padding(.horizontal, 20)
//        .background(Color.white.cornerRadius(11))
    }
}

//struct TabCustomView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabCustomView()
//    }
//}
