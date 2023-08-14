//
//  HTFButtonView.swift
//  BoolNaBangMBTI
//
//  Created by 윤진영 on 2023/08/11.
//

// 진영
// HowToFriendView - Button
import SwiftUI

struct HTFButtonView: View {
    
    @ObservedObject var howToGetClose: OpponentStore = OpponentStore()
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
                        .font(.title3)
                        .tint(.black)
//                    RoundedRectangle(cornerRadius: 5)
//                        .frame(width: 80,height: 50)
//                        .foregroundColor(isSelected ? color: .mint)
                        .padding(20)
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
