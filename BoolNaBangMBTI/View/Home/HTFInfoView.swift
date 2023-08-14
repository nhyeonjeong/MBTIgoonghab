//
//  HTFInfo.swift
//  BoolNaBangMBTI
//
//  Created by 윤진영 on 2023/08/14.
//
// 진영
// 선택한 mbti 내용만 보이게 해줘야함~!
import SwiftUI

struct HTFInfoView: View {
    
    @ObservedObject var howToFriend: OpponentStore = OpponentStore()
    @State var newMbti: MBTItype = MBTItype.ENFJ
    
    
    var body: some View {
        VStack{
                ForEach(MBTItype.allCases, id:\.self) { mbti in
                    Text("\(mbti.rawValue)랑 친해지는법")
                        .font(.title3.bold())
                        .padding(20)
                    
                    AsyncImage(url: URL(string: mbti.imageURL)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 120, height: 200)
                    .padding(60)
                    Text("\(mbti.howToFriend)")
                        .font(.headline)
                }
            }
        }

    }

struct HTFInfo_Previews: PreviewProvider {
    static var previews: some View {
        HTFInfoView()
    }
}
