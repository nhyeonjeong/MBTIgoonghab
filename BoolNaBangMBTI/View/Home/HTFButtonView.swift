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
    
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String //
    
    var body: some View {
        ZStack {
        RoundedRectangle(cornerRadius: 5)
                .frame(width: 80,height: 50)
                .foregroundColor(isSelected ? color: .white)
            Text(text)
                .foregroundColor(.black)
        }
    }
}

struct HTFButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HTFButtonView(isSelected: .constant(true), color: .mint, text: "ESTP")
    }
}
