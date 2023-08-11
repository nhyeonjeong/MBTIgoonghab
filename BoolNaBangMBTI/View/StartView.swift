//
//  StartView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI

struct StartView: View {
    
    // 텍스트 필드 저장 변수
    @State var nameField: String = ""
    
    // Picker 선택지 변수
    var eiPicker: [String] = ["E", "I"]
    @State var eiSelect: String = ""
    var snPicker: [String] = ["S", "N"]
    @State var snSelect: String = ""
    var ftPicker: [String] = ["F", "T"]
    @State var ftSelect: String = ""
    var pjPicker: [String] = ["P", "J"]
    @State var pjSelect: String = ""

    // View
    var body: some View {
        
        VStack {
            
            // 이름 입력 텍스트 필드
            // 입력창 가운데로 옮기는거 찾아보기
            TextField("이름을 입력하세요", text: $nameField)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200, height: 50, alignment: .center)
                .background(Color.gray.opacity(0.2))
//                .foregroundColor(.gray)
                .cornerRadius(15)
                .padding(50)
                    
            // picker? 2지선다 버튼?
            // Picker로 2지선다 가능
            // 위에서 아래로 가자
            // MBTI 선택 Picker
            Group {
                Text("👇Select MBTI👇")
                    
                Picker("Select E/I", selection: $eiSelect) {
                    ForEach(eiPicker, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                .frame(width: 150, height: 30)
                Picker("Select S/N", selection: $snSelect) {
                    ForEach(snPicker, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                .frame(width: 150, height: 30)
                Picker("Select F/T", selection: $ftSelect) {
                    ForEach(ftPicker, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                .frame(width: 150, height: 30)
                Picker("Select P/J", selection: $pjSelect) {
                    ForEach(pjPicker, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                .frame(width: 150, height: 30)
            }
            
            // 확인하고 넘어가는 버튼
            Button {
                //
            } label: {
                Text("여기까지")
                    .frame(width: 120, height: 60)
                    .foregroundColor(.white)
            }
            .buttonStyle(BorderedButtonStyle())
//            .background(Color("#2A2F58"))
            .tint(.indigo)
            .cornerRadius(25)
            .padding(30)

            // MBTI 검사로 가는 텍스트, 버튼
            HStack{
                Text("MBTI 검사하러 가기 ➡️")
                Button {
                    //
                } label: {
                    Image("SearchMBTI")
                        .clipShape(Circle())
                        .shadow(radius: 3)
                }

            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
