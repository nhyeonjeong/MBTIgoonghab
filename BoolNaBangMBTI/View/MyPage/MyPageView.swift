//
//  MyPageView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//
// 진영
// 이미지 + 닉네임 + Mbti 등등 데이터 연결하고
// 디자인 변경...
import SwiftUI

struct MyPageView: View {
    
    let imageURLString = "https://cdn.discordapp.com/attachments/1119087028596912158/1139115849614114837/9k.png"
    
    @State var islogoutAlert : Bool = false
    @State var isAlarmAlert : Bool = false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Section("내정보"){
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
                            // SettingView에서 닉네임 값 받아오기~!(데이터 미완성)
                            NavigationLink {
                                MBTIInfoView()
                            } label: {
                                Text("#ENFP >")
                                // 이부분을 클릭 시 mbti정보 보여주는 뷰로 넘겨줄건데. 이게 클릭이 가능하다는걸 어떻게 표현하는게 좋을까요? 지금상태는 사용자 관점에서 클릭이 되는지 모를 것 같아요
                            }//.tint(.black)
                            NavigationLink {
                                MyInfoChangeView()
                            } label: {
                                Text("내 정보관리 >")
                            }
                        }
                    }
                    .font(.headline)
                }.font(.title2.bold()).padding(.trailing,120)
                
                // 친구리스트 뷰 연결
                // toolbar를 쓰려니 NavigationStack이 필요한데
                // NavigationStack을 그냥쓰면 내용이 겹쳐버려서 뷰 새로 생성했어요 = FriendListView()
                Section("친구리스트"){
                    ScrollView{
                        FriendListView()
                    }
                }.font(.title2.bold())
            }
            .navigationTitle("마이페이지")
            
            // '종'클릭 시 시트 반만 올리기~! (디자인 별로에요..Alert창으로 대체가 가능하려나..)
            // 코드 너무 길어져서 뷰 새로 생성했어요 = AlarmView()
            .sheet(isPresented: $isAlarmAlert){
                VStack{
                    AlarmView()
                }.presentationDetents([.medium])
            }
            
            .toolbar{
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        self.islogoutAlert.toggle()
                    } label: {
                        Text("로그아웃")
                            .font(.title2.bold())
                            .foregroundColor(.red)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        self.isAlarmAlert.toggle()
                    }label: {
                        Label("알람", systemImage: "bell.fill")
                    }
                }
            }
            
            .alert(isPresented: $islogoutAlert){
                Alert(title: Text("로그아웃 하시겠습니까?"),
                      primaryButton: .default(Text("Yes")), secondaryButton: .cancel())
            }
        }
    }
}
struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
            MyPageView()
    }
}
