//
//  Data.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import Foundation


//

enum MBTItype {
    case ESTP, ESTJ, ESFP, ESFJ, ENFP, ENFJ, ENTP, ENTJ
    case ISTP, ISTJ, ISFP, ISFJ, INFP, INFJ, INTP, INTJ
    
    
    var imageURL: String {
        switch self {
        case .ESTP :
            return ""
        case .ESTJ :
            return ""
        case .ESFP :
            return ""
        case .ESFJ :
            return ""
        case .ENFP :
            return ""
        case .ENFJ :
            return ""
        case .ENTP :
            return ""
        case .ENTJ :
            return ""
        case .ISTP :
            return ""
        case .ISTJ :
            return ""
        case .ISFP :
            return ""
        case .ISFJ :
            return ""
        case .INFP :
            return ""
        case .INFJ :
            return ""
        case .INTP:
            return ""
        case .INTJ :
            return ""
            
        }
    }

    var howToFriend: String {
        switch self {
        case .ESTP :
            return ""
        case .ESTJ :
            return ""
        case .ESFP :
            return ""
        case .ESFJ :
            return ""
        case .ENFP :
            return ""
        case .ENFJ :
            return ""
        case .ENTP :
            return ""
        case .ENTJ :
            return ""
        case .ISTP :
            return ""
        case .ISTJ :
            return ""
        case .ISFP :
            return ""
        case .ISFJ :
            return ""
        case .INFP :
            return ""
        case .INFJ :
            return ""
        case .INTP:
            return ""
        case .INTJ :
            return ""
            
        }
    }
    
    
    struct Profile: Identifiable {
        var id: UUID = UUID()
        var name: String
        var mbti: MBTItype
        var gender: String
        
    }
    
    struct Opponent: Identifiable {
        var id: UUID = UUID()
        var oppName: String
        var oppMbti: MBTItype
    }
    
    class OpponentStore {
        var opponents: [Opponent] = []

        var howToFriend: String {
            switch self {
            case .ESTP :
                return ""
            case .ESTJ :
                return ""
            case .ESFP :
                return ""
            case .ESFJ :
                return ""
            case .ENFP :
                return ""
            case .ENFJ :
                return ""
            case .ENTP :
                return ""
            case .ENTJ :
                return ""
            case .ISTP :
                return ""
            case .ISTJ :
                return ""
            case .ISFP :
                return ""
            case .ISFJ :
                return ""
            case .INFP :
                return ""
            case .INFJ :
                return ""
            case .INTP:
                return ""
            case .INTJ :
                return ""
                
            }

    }
}

