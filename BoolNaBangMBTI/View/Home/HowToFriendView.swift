//
//  HowToFriendView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

// 진영
import SwiftUI

struct HowToFriendView: View {
    
    var body: some View {
        HStack{
            ScrollView{
                HTFButtonView()
                    .padding()
            }
            Image("line").resizable()
            ScrollView{
                HTFInfoView()
            }
    }
    }
    }

struct HowToFriendView_Previews: PreviewProvider {
    static var previews: some View {
        HowToFriendView()
    }
}
