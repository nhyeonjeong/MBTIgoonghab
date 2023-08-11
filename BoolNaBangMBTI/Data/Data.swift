//
//  Data.swift
//  BoolNaBangMBTI
//
//  Created by 임병구 on 2023/08/07.
//

import Foundation


//

enum MBTItype: String, CaseIterable { //picker 위한 프로토콜
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
    var howToGetClose: String {
        switch self {
        case .ESTP :
            return "엣팁아 나 오늘 진짜 흥청망청 놀아보고 싶어. \n내일이 없는 것처럼….이러면서 술 한 병 까기"
        case .ESTJ :
            return "도서관에서 자연과학 섹션의 책을 무작위로 5권 고른 다음 ESTJ한테 이거 읽어봤냐고 물어보기그런 다음 ESTJ한테 최대한 지적으로 보일 수 있는 질문하기(질문이 추상적이며 안됨)"
        case .ESFP :
            return "'애들 술 먹는다는데 너도 갈래?'라고 엣프피한테 물어보기 \n엣프피가 안간다 그러면 '아 너 없는 모임이 무슨 소용이냐? 나도 안 가'라고 해주기"
        case .ESFJ :
            return "'저 사실 엣프제씨를 너무 좋아해서 일 년 전부터 바라만 봤어요. 제가 워낙 낯을 가려서... 친해지고 싶어요.'이러면서 운 띄우면 그다음부턴 ESFJ가 알아서 할 것임"
        case .ENFP :
            return "친구 중에 ENFP가 제일 좋다고 하면서 같이 찍은 사진 프사로 해놓기 \nENFP 카톡 저장 이름 뒤에만 ❤️있다고 강조하기"
        case .ENFJ :
            return ""
        case .ENTP :
            return "세상에서 가장 웃기다면서, 배 움켜잡고 폭소하기 \n웬만한 TV예능보다 ENTP랑 노는게 재밌다고 하기"
        case .ENTJ :
            return "천재라서 너무 믿음직스럽다고 호들갑 떨면서 복종하기 \n 여행가서 ENTJ가 하자는대로 다하기 \n역시 ENTJ라서 여행계획이 최고다라고 엄지척하기"
        case .ISTP :
            return "주변에서 네가 제일 이성적인 조언 잘해준다며 이성적인 조언 구하기\n조언 다 받고 난 다음엔 잇팁이 지나가듯 좋아한다고 말했던 브랜드 담. 담. 하. 게. 선물하기"
        case .ISTJ :
            return ""
        case .ISFP :
            return "ISFP 생일에 쿠션감 좋은 바디필로우 생일선물로 사주기"
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

class OpponentStore : ObservableObject{
    @Published var opponents: [Opponent] = [
        Opponent(oppName: "윤진영", oppMbti: .ISTP)
    ]
    
    func removeOpp(at offsets: IndexSet) {
        opponents.remove(atOffsets: offsets)
        
    }
    
    func addOpp(opponent: Opponent) {

        opponents.append(opponent)

        
    }
}

