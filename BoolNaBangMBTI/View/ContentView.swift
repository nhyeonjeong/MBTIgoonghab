//
//  ContentView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    
    
    var body: some View {

        VStack(spacing:20){
            Button("카카오 로그인", action: {
                kakaoAuthVM.handleKakaoLogin()
            })
            Button("카카오 로그아웃", action: {})
            
                
        }
    }
}
