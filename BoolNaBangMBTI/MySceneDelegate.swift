//
//  MySceneDelegate.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/14.
//

import Foundation
import UIKit
import KakaoSDKAuth


class MySceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            if (AuthApi.isKakaoTalkLoginUrl(url)) {
                _ = AuthController.handleOpenUrl(url: url)
            }
        }
    }
}
