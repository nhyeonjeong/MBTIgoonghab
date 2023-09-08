//
//  AuthModel.swift
//  BoolNaBangMBTI
//
//  Created by cha_nyeong on 2023/09/08.
//

/*
import Firebase
import FirebaseAuth
import FirebaseFirestoreSwift

//파이어베이스의 인증 세션(서버단의 세션)
class AuthService: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    //singleton Pattern
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws -> (Bool, String) {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            
            let tempUserSession = result.user
            let snapshot = try await Firestore.firestore().collection("Users").document(tempUserSession.uid).getDocument()
            //
            let tempUser = try snapshot.data(as: Profile.self)
            
            // 차단 여부
//            if tempUser.isBlocked {
//                let message = "차단된 사용자 입니다."
//                return (result : true, message : message)
//            } else {
                self.userSession = result.user
                try await UserService.shared.fetchCurrentUser()
                return (result : false, message : "")
//            }
        } catch {
            print("debug : Failed to Login In with \(error.localizedDescription)")
            print(String(describing: error))
            return (result : true, message : "이메일 또는 비밀번호가 다릅니다.")
        }
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, nickname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await uploadUserData(withEmail: email, nickname: nickname, username: username, id: result.user.uid)
            print("debug : Create User \(result.user.uid)")
        } catch {print(String(describing: error))
            print("debug : Failed to Create User with \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut() // 백엔드 ( 서버에서 로그아웃 )
        self.userSession = nil // 앱에서 세션을 제거하고 라우팅 업데이트
        UserService.shared.reset() // sets current User -> nil
    }
    
    private func uploadUserData(
        withEmail email: String,
        nickname: String,
        username: String,
        id: String
    ) async throws {
        let user = Profile(id: id, name: email, mbti: username, gender: nickname)
        guard let userData = try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("Users").document(id).setData(userData)
        UserService.shared.currentUser = user
    }
}

*/
