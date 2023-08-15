//
//  HomeView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

// 진영
import SwiftUI

struct HomeView: View {
    
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    
    @State var selectedButton: Bool = true
//    var projectButton: Bool = false
    
    var body: some View {
            NavigationStack{
                VStack{
                    Spacer()
                    NavigationLink {
                        
                        goongHabListView(selectedButton: true) //true면 연애궁합
                    } label: {
                        Text("연애궁합")
                            .frame(width: 250, height: 50)
                    } .padding()
                    
                    NavigationLink {
                        
                        goongHabListView(selectedButton: false) //false면 프로젝트궁합
                    } label: {
                        Text("프로젝트 궁합")
                            .frame(width: 250, height: 50)
                    }
                    .padding()
                    
                    NavigationLink {
                        HowToFriendView()
                    } label: {
                        Text("MBTI별 대처법 ▶︎")
                    }.tint(.white)
                        .font(.title2 .bold())
                        .foregroundColor(.black)
                    
                    
                    
                    Spacer()
                    
                }
                .font(.largeTitle)
                .tint(.indigo)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 20))
                .shadow(color: .gray, radius: 2, x: 0,y: 3)
                
                Spacer()
                Button {
                    kakaoAuthVM.handleKakaoLogin()
                } label: {
                    Image("kakao_login")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.8)
                        .padding()
                }
                
                
                
                Spacer()

            }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
