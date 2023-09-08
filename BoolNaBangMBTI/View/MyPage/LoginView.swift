//
//  LoginView.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import SwiftUI

struct LoginView: View {
    
    @State private var idField: String = ""
    @State private var passwordField: String = ""
    
    var body: some View {
        NavigationStack {
            Spacer()
            Text("Login")
                .font(.system(size: 25))
                .fontWeight(.black)
                .padding(.bottom, 40)
            TextField("아이디를 입력하세요", text: $idField)
                .frame(width: 360, height: 50, alignment: .center)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 50, bottom: 20, trailing: 50))
                
            SecureField("비밀번호를 입력하세요", text: $passwordField)
                .frame(width: 360, height: 50, alignment: .center)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("Login")
                    .fontWeight(.bold)
                    .frame(width: 360, height: 50)
                    .background(Color.indigo)
                    .cornerRadius(5)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
            }
            
            NavigationLink {
                //
            } label: {
                Text("Sign Up")
                    .fontWeight(.bold)
                    .frame(width: 360, height: 50)
                    .background(Color.indigo)
                    .cornerRadius(5)
                    .foregroundColor(.white)

            }
            Spacer()

        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//extension Text{
//    enum customTextCase {
//        case title, set
//    }
//    
//    func setTextType(textCase: customTextCase) -> some View {
//        switch textCase {
//        case .title:
//            return self.font(.system(size:49, weight: .bold, design: .default))
//        }
//    }
//}
