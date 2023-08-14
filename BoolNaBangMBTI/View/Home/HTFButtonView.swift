//
//  HTFButtonView.swift
//  BoolNaBangMBTI
//
//  Created by 윤진영 on 2023/08/11.
//

// 진영
// HowToFriendView - Button
// mbti 클릭 시 클릭되었음을 표현해주기(색상 다르게?)
import SwiftUI

struct HTFButtonView: View {
    
    @ObservedObject var howToFriend: OpponentStore = OpponentStore()
    @State var newMbti: MBTItype = MBTItype.ENFJ
    //@State var color: Color = .mint
    
    @State private var isSelected: Bool = false
    @State private var isSelected2: Bool = false
    
    var body: some View {
        VStack {
            ForEach(MBTItype.allCases, id:\.self) { mbti in
                Button{
                    isSelected.toggle()
                }label: {
                    Text("\(mbti.rawValue)")
                        .font(.title2)
                        .tint(.black)
//                    RoundedRectangle(cornerRadius: 5)
//                        .frame(width: 80,height: 50)
//                        .foregroundColor(isSelected ? color: .mint)
                        //.padding(20)
                        .onTapGesture {
                            isSelected.toggle()
//                            if isSelected{
//                                isSelected2 = false
//                            }
                        }
                    
                }
            }
        }
    }
}

struct HTFButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HTFButtonView()
    }
}
