//
//  KakaoAuthVM.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/14.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM: ObservableObject {
    
    func handleKakaoLogin() {
        // 카카오톡 실행 가능 여부 확인 - 설치 되어있을 때
        if (UserApi.isKakaoTalkLoginAvailable()) {
            
             // 카카오 앱을 통해 로그인
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                }
            }
        } else { // 설치 안되어 있을 때
            
            // 카카오 웹뷰로 로그인
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("loginWithKakaoAccount() success.")

                        //do something
                        _ = oauthToken
                    }
                }
            
        }
    }
    
}

