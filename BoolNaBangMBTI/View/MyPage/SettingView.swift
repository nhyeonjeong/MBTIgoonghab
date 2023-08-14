//
//  SettingView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//
// MyPageView에서 '내정보 관리' 클릭 시 정보변경 하는 뷰
import SwiftUI

struct SettingView: View {
    
    let imageURLString = "https://mblogthumb-phinf.pstatic.net/MjAxNzAzMTVfMjYw/MDAxNDg5NTMzMTAxNDg2.jES76J22C9kML4CLwvI6L5MKWfAOfjOjpwHH0yoaqd8g.hh2-0XVMOaKMhX2aXJOx45ff0ekQC5gh5NsD8-v2XIcg.GIF.doghter4our/IMG_5225.GIF?type=w800"
    @State var nickname : String = ""
    @State var newMbti: MBTItype = MBTItype.ESTP
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: imageURLString)){ url in
                url.resizable()
                    .frame(width: 200,height: 200)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(100)
            } placeholder: {
                ProgressView()
            }
            HStack{
                Text("닉네임")
                TextField("닉네임을 입력하세요", text: $nickname)
            }.font(.title2)
            HStack{
                Text("성별")
                Button("여자"){}
                Button("남자"){}
            }.font(.title2)
            HStack{
                Text("MBTI")
                Picker("MBTI", selection: $newMbti) {
                    ForEach(MBTItype.allCases, id:\.self) { mbti in
                        Text(String(describing: mbti)).tag(mbti)
                    }
                }
            }.font(.title2)
            Spacer()
                Button {
                    //
                } label: {
                    Text("변경하기")
                        .frame(width: 160,height: 40)
                }.buttonStyle(.bordered).padding(.leading,100)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
