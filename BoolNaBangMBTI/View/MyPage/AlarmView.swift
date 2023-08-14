//
//  AlarmView.swift
//  BoolNaBangMBTI
//
//  Created by 윤진영 on 2023/08/15.
//

// 진영
// MyPageView의 '종' 클릭 시 넘어오는 뷰~
// 디자인 수정?!할깝쇼?

import SwiftUI

struct AlarmView: View {
    
    @State var isVibrationAlert : Bool = false
    @State var isSoundAlert : Bool = false
    
    var body: some View {
        VStack{
            Section("알림설정"){
                Toggle(isOn:$isVibrationAlert){
                    Text("진동")
                        .font(.largeTitle)
                }
                Toggle(isOn:$isSoundAlert){
                    Text("소리")
                        .font(.largeTitle)
                }
            }
        }.padding(100).font(.title2)
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}
