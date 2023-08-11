//
//  HowToFriendView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

// 진영
import SwiftUI

struct HowToFriendView: View {
    
    @State private var isSelected: Bool = false
    @State private var isSelected2: Bool = false
    
    let imageURLString = "https://www.16personalities.com/static/images/personality-types/avatars/estp-entrepreneur.png"
    
    var body: some View {
        HStack{
            ScrollView{
                ForEach(0..<16) { _ in
                    Button {
                        isSelected.toggle()
                    } label: {
                        HTFButtonView(isSelected: $isSelected, color: .mint, text: "estp")
                            .onTapGesture {
                                isSelected.toggle()
                                if isSelected{
                                    isSelected2 = false
                                }
                            }
                        //                            if(self.isChoose){
                        //                                Text("ESTP")
                        //                                .frame(width: 80,height: 40)
                        //                                    .font(.title2)
                        //                                    .tint(.black)
                        //                            }else{
                        //                                Text("ESTP")
                        //                                    .frame(width: 80,height: 40)
                        //                                    .font(.title2)
                        //                                    .background(Color.mint)
                        //                                    .tint(.black)
                        //                            }
                        //                        }
                    }
                }
            }
            Image("line")
            VStack{
                ScrollView{
                    Text("ESTP랑 친해지는 법!")
                        .font(.title3.bold())
                        .padding(20)
                    AsyncImage(url: URL(string: imageURLString)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 120, height: 200)
                    .padding(60)
                    Text("1. 술자리참석 \n2. 오락게임 같이하기 \n3. 여행모험같이 \n4. 편하게 대하기 \n5. 오랫동안 함께 놀기!?")
                }
            }
        }
    }
}



struct HowToFriendView_Previews: PreviewProvider {
    static var previews: some View {
        HowToFriendView()
    }
}
