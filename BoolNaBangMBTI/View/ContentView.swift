//
//  ContentView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

// tabView인데 커스텀으로 하는거라
// TabView 키워드 안씀
// 여기까지 버튼 누르면 위에 back버튼 안나오게 수정하기

import SwiftUI


struct ContentView: View {
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    @State var tabBarIndex: Int = 1
    
    var body: some View {
        VStack(spacing: 5) {
                Spacer()
                VStack {
                    switch tabBarIndex {
                    case 0:
                        CommunityListView()
                    case 1:
                        HomeView()
                    case 2:
                        MyPageView()
                    default:
                        EmptyView()
                    }
                    
                    
                    Button("카카오 로그인", action: {
                        kakaoAuthVM.handleKakaoLogin()
                    })
                    Button("카카오 로그아웃", action: {})
                    
                }
                Spacer()
                
                // 탭뷰 커스텀해주는 뷰 호출
                TabCustomView(tabBarIndex: $tabBarIndex)
            }
//        .background(Color.black.opacity(0.5)).ignoresSafeArea()
    }
}



/*
 TabView(selection: $tabBarIndex) {
 CommunityListView()
 .tabItem {
 Label("Community", systemImage: "house.fill")
 }
 .tag(0)
 HomeView()
 .tabItem {
 Label("Home", systemImage: "house.fill")
 }
 .tag(1)
 MyPageView()
 .tabItem {
 Label("My Page", systemImage: "house.fill")
 }
 .tag(2)
 }
 */
