//
//  TranslateViewController.swift
//  019_Practice
//
//  Created by Mac Pro 15 on 2022/07/30.
//

import UIKit

class TranslateViewController: UIViewController {

    
    //UIButton, UITextField : 액션 연결 가능(뷰에서 컨트롤 상속받음)
    //UITextView, UISearchBar, UIPickerView : 액션 연결 불가(뷰에서 각각 상속받음
    //UIControl 객체 상속받지 않은 것들은 프로토콜 기반으로 액션 구성됨.
    
    @IBOutlet weak var userInpurTextView: UITextView!
    
    let textViewPlaceholderTExt = "번역할 문장을 작성해보세요"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //placeholder 멤버없어서 선언 못함. 변수 선언하여 text프로퍼티로 접근해야함.
        //userInpurTextView.placeholder = "입력"
       
        userInpurTextView.text = textViewPlaceholderTExt
        userInpurTextView.textColor = .red
        
        //원래 자기가 해야하는데 못하니까 컨트롤러에게 위임함.
        userInpurTextView.delegate = self
    }
    

}

//userInpurTextView.delegate = self에 위임해줄 익스텐션 생성
//delegate를 userInpurTextView에만 연결했기 때문에 userInpurTextView변경시에만 print발생
//Responder Chain: 많은 객체중에 어떤걸 선택했는지 알려주는 기능
extension TranslateViewController: UITextViewDelegate {
    
    //텍스트뷰의 텍스트가 변할때마다 호출
    func textViewDidChange(_ textView: UITextView) {
        print(textView.text.count) // 함수의 내부매개변수를 받아서 작성
    }
    
    //텍스트뷰 편집이 시작될때(커서가 시작될때) 호출
    //텍스트뷰 글자: 플레이스홀더랑 글자랑 같으면 텍스트뷰를 clear시키고, 글자색 새로 지정
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("Begin")
        if userInpurTextView.textColor == .red {
            userInpurTextView.text = nil
            userInpurTextView.textColor = .blue
        }
    }
    
    //텍스트뷰 편집이 끝났을때(커서가 없어질때) 호출
    //텍스트뷰 글자: 사용자가 아무글자 안썼으면 플레이스홀더 글자 보이게 만들기
    func textViewDidEndEditing(_ textView: UITextView) {
        print("End")
        
        if userInpurTextView.text.isEmpty {
            userInpurTextView.text = textViewPlaceholderTExt
            userInpurTextView.textColor = .blue
    }
    
}
}
