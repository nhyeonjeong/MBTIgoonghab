//
//  HowToFriendView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

// 진영
import SwiftUI

struct HowToFriendView: View {
    
    let imageURLString = "https://www.16personalities.com/static/images/personality-types/avatars/estp-entrepreneur.png"
    
    var body: some View {
        HStack{
            ScrollView{

            }
            VStack{
                Text("ESTP랑 친해지는 법!")
                AsyncImage(url: URL(string: imageURLString)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 180)
                Text("1. 술자리참석 \n2. 오락게임 같이하기 \n3. 여행모험같이 \n4. 편하게 대하기 \n5. 오랫동안 함께 놀기!?")
            }
        }
    }
}



struct HowToFriendView_Previews: PreviewProvider {
    static var previews: some View {
        HowToFriendView()
    }
}
