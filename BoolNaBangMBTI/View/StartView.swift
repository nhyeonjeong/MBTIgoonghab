//
//  StartView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI

struct StartView: View {
    // 데이터 틀 만들고 이름과 MBTI
    // 선택한거 저장할 수 있도록 만들기
    
    // 텍스트 필드 저장 변수
    @State var nameField: String = ""
    @State var MBTIResult: String = ""
    @State var convert: MBTItype = .ISTP
    
    // Picker 선택지 변수
    var eiPicker: [String] = ["E", "I"]
    @State var eiSelect: String = ""
    @State var eiIndex: Int = 0
    var snPicker: [String] = ["S", "N"]
    @State var snSelect: String = ""
    @State var snIndex: Int = 0
    var ftPicker: [String] = ["F", "T"]
    @State var ftSelect: String = ""
    @State var ftIndex: Int = 0
    var pjPicker: [String] = ["P", "J"]
    @State var pjSelect: String = ""
    @State var pjIndex: Int = 0
    
//    enum MBTI: String, Identifiable{
//        case E, I, S, N, F, T, P, J
//        var id: Self { self }
//    }

    // View
    var body: some View {
        NavigationStack {
            VStack {

                // 이름 입력 텍스트 필드
                // 입력창 가운데로 옮기는거 찾아보기
                // 안나옴 하
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
        
                    VStack {
                        Picker("Select E/I", selection: $eiIndex) {
                            ForEach(0..<2) {
                                Text(eiPicker[$0])
                            }
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 150, height: 30)
                        Text("\(eiPicker[eiIndex])")
                    }
                    VStack {
                        Picker("Select S/N", selection: $snIndex) {
                            ForEach(0..<2){
                                Text(snPicker[$0])
                            }
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 150, height: 30)
                        Text("\(snPicker[snIndex])")
                    }
                    VStack {
                        Picker("Select F/T", selection: $ftIndex) {
                            ForEach(0..<2){
                                Text(ftPicker[$0])
                            }
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 150, height: 30)
                        Text("\(ftPicker[ftIndex])")
                    }
                    VStack {
                        Picker("Select P/J", selection: $pjIndex) {
                            ForEach(0..<2){
                                Text(pjPicker[$0])
                            }
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 150, height: 30)
                        Text("\(pjPicker[pjIndex])")
                    }
                
                    Button {
                        makembtistring()
//                            print(MBTIResult)
                        convert = convertenum(string: MBTIResult)!
//                            print(convert.self)
                        user.name = nameField
                        user.mbti = convert

                    } label: {
                        Text("저장")
                    }
                    
                }

                // 확인하고 넘어가는 버튼
                // 다음화면 -> ContentView()
                // 탭 뷰 화면
                
                NavigationLink {
                    ContentView()
                    
                } label: {
                    Text("여기까지")
                        .font(.system(size: 22))
                        .frame(width: 120, height: 60)
                        .foregroundColor(.white)
                }
                .simultaneousGesture(TapGesture().onEnded{
                    makembtistring()
//                            print(MBTIResult)
                    convert = convertenum(string: MBTIResult)!
//                            print(convert.self)
                    user.name = nameField
                    user.mbti = convert
                })
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
                .cornerRadius(25)
                .padding(30)
                
                // MBTI 검사로 가는 텍스트, 버튼
                // 다음화면 -> SafariTestView()
                HStack{
                    Text("MBTI 검사하러 가기 ➡️")
                    NavigationLink {
                        SafariTestView()
                    } label: {
                        Image("SearchMBTI")
                            .clipShape(Circle())
                            .shadow(radius: 3)
                    }
                }
            
            }
        }
    }
    func setProfile(name: String, mbti: MBTItype) {
        user.name = name
        user.mbti = mbti
    }
    func makembtistring() {
            MBTIResult = "\(eiPicker[eiIndex])\(snPicker[snIndex])\(ftPicker[ftIndex])\(pjPicker[pjIndex])"
    }
    func convertenum (string: String) -> MBTItype? {
        var mbti: MBTItype = .ENFJ
        for x in MBTItype.allCases {
            if MBTIResult == x.kind {
                mbti = x
            }
        }
        return mbti
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
