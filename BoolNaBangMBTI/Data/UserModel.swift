//
//  UserModel.swift
//  BoolNaBangMBTI
//
//  Created by cha_nyeong on 2023/09/08.
//

/*
import Foundation
import Firebase
import FirebaseStorage
import FirebaseFirestoreSwift

//사용자 서비스(로컬단의 세션)
class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init() {
        Task { try await fetchCurrentUser() }
    }
    
    //    UserService.shared.currentUser
    
    //현재 유저 패치작업
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("Users").document(uid).getDocument()
        //
        let user = try snapshot.data(as: Profile.self)
        
        self.currentUser = user
        
        print("Debug: User is \(user)")
    }
    
    //본인을 제외한 유저들고 오기
//    @MainActor
//    static func fetchUsers() async throws -> [User] {
//        guard let currentUid = Auth.auth().currentUser?.uid else { return [] }
//        let snapshot = try await Firestore.firestore().collection("Users").getDocuments()
//        let users = snapshot.documents.compactMap({try? $0.data(as: User.self) })
//        print(users.filter({ $0.id != currentUid }))
//        return users.filter({ $0.id != currentUid })
//    }
    
    
    //현재유저 삭제
    func reset() {
        self.currentUser = nil
    }
    
//    static func editProfileImage(url: String) {
//        guard let currentUid = Auth.auth().currentUser?.uid else { return }
//        guard let currentUser = UserService.shared.currentUser else { return }
//        var tempUser: User = currentUser
//        tempUser.profileDownloadImageURL = url
//        UserService.shared.currentUser?.profileDownloadImageURL = url
//
//        guard let feedData = try? Firestore.Encoder().encode(tempUser) else { return }
//
//        Firestore.firestore().collection("Users").document(currentUid).setData(feedData)
//
//    }
//
}

*/

