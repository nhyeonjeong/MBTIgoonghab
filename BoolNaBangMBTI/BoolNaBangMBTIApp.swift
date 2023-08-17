import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct KakaoAuthApp: App {
    init() {

        // 메인번들에 있는 카카오 앱키 불러오기
        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""

        // kakao SDK 초기화
        KakaoSDK.initSDK(appKey: kakaoAppKey as! String)
    }

    var body: some Scene {
        WindowGroup {
            StartView()
        }
    }
}
