//
//  FriendListView.swift
//  BoolNaBangMBTI
//
//  Created by 윤진영 on 2023/08/15.
//

// 진영
// MyPageView에 친구리스트 보여주는 뷰~
// 이미지 + 닉네임 + Mbti 등등 데이터 연결해야함~!

import SwiftUI

struct FriendListView: View {
    
    let imageURLString = "https://www.econovill.com/news/photo/201603/285365_95988_038.png"

    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(0..<6){ _ in
                HStack{
                    AsyncImage(url: URL(string: imageURLString)){ url in
                        url.resizable()
                            .frame(width: 100,height: 100)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(70)
                    } placeholder: {
                        ProgressView()
                    }
                    VStack{
                        Text("닉네임 : 어쩌고")
                        Text("MBTI : ESTP")
                        //                                    LabeledContent("닉네임 :", value: "어쩌고")
                        //                                    LabeledContent("MBTI", value: "ESTP")
                    }.font(.headline)
                }
            }
            .font(.title2.bold())
        }.font(.title2.bold()).padding(.trailing,120)
    }
}
struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendListView()
    }
}
