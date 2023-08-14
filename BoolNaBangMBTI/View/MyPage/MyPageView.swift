//
//  MyPageView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI

struct MyPageView: View {
    
    let imageURLString = "https://cdn.discordapp.com/attachments/1119087028596912158/1139115849614114837/9k.png"
    
    @State var isShowingAlert : Bool = false
    
    var body: some View {

        NavigationStack{
            VStack(alignment: .leading){
                HStack{
                    
                    AsyncImage(url: URL(string: imageURLString)){ url in
                        url.resizable()
                            .frame(width: 130,height: 130)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(70)
                    } placeholder: {
                        ProgressView()
                    }
                    VStack{
                        Text("뱅구1234")
                        NavigationLink {
                            MBTIInfoView()
                        } label: {
                            Text("#ENFP >")
                        }.tint(.black)
                        NavigationLink {
                            SettingView()
                        } label: {
                            Text("내 정보관리 >")
                        }
                    }
                    .font(.headline)
                }.padding(.trailing,120)
                VStack(alignment: .leading){
                    Section("친구리스트"){
                        ScrollView{
                            ForEach(0..<6){ _ in
                                HStack{
                                    AsyncImage(url: URL(string: imageURLString)){ url in
                                        url.resizable()
                                            .frame(width: 100,height: 100)
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(70)
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    
                                    VStack{
                                        Text("닉네임 : 어쩌고")
                                        Text("MBTI : ESTP")
                                        //                                    LabeledContent("닉네임 :", value: "어쩌고")
                                        //                                    LabeledContent("MBTI", value: "ESTP")
                                    }
                                    .font(.headline)
                                }
                            }
                        }
                    }
                    .font(.title2.bold())
                }.navigationTitle("마이페이지")
            }
            .toolbar{
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        self.isShowingAlert.toggle()
                    } label: {
                        Text("로그아웃")
                            .font(.title2.bold())
                            .foregroundColor(.red)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Label("알람", systemImage: "bell.fill")
                }
            }
            .alert(isPresented: $isShowingAlert){
                Alert(title: Text("로그아웃 하시겠습니까?"),message: nil,dismissButton: .default(Text("YES")))
            }
        }

    }
}
struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
            MyPageView()
    }
}
