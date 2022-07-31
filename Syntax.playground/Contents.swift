import UIKit

func welcome(me myname: String, you yourname: String) {
    print("안녕하세요 저는 \(myname) 입니다! 잘 부탁드려요 \(yourname)씨! ")
}

func welcome2(me myname: String, you yourname: String) -> String {
    return "안녕하세요 저는 \(myname) 입니다! 잘 부탁드려요 \(yourname)씨! "
}
welcome(me: "서근", you: "미진")
let a = welcome2(me: "서근", you: "태희")
print(a)

브로님 안녕하세요. 늦은시간 죄송합니다. 함수작성법에서 return의 의미를 잘 모르겠어서 질문드립니다.
welcome함수에는 함수만 입력해도 값이 출력되는데 welcome2함수는 꼭 변수에 넣고 print해줘야 출력이 되는 이유가 뭔가요?
welcome2함수도 welcome함수처럼 welcome2(me: "서근", you: "태희")라고 입력하면 결과값이 출력되야 할똑같이 출력이
질문의 요지는 어떤때 변수에 값을 넣고 출력해야하는지 헷갈려서 질문드립니다.

