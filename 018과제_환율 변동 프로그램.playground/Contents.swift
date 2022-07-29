import UIKit
import Foundation

struct ExchangeRate {
    
    var currentcyRate: Double {
        willSet {
            print("currencyRate willSet - 환율 변동 예정: \(currentcyRate) -> \(newValue)")
        }
        didSet {
            print("currencyRate didSet - 환율 변동 완료: \(oldValue) -> \(currentcyRate)")
        }
    }
    
    var USD: Double {
            willSet {
                print("USD willSet - 환전 금액: USD: \(newValue)달러로 환전될 예정")
            }
            didSet {
                print("USD didSet - KRW: \(KRW)원 -> \(KRW/currentcyRate)달러로 환전되었음")
            }
        }
 
    var _KRW = 0.0
    var KRW: Double {
        get {
            return _KRW
        }
        set {
            _KRW = newValue
            USD = KRW/currentcyRate
        }
    }
}
 
var rate = ExchangeRate(currentcyRate: 1100, USD: 1)
rate.KRW = 500000
rate.currentcyRate = 1350
rate.KRW = 500000

/*
 해결방법
 -. currentcyRate, USD에 willSet, didSet 추가
 -. var KRW에 get, set연산프로퍼티 추가하여 KRW 저장하고 반환할 수 있게 구현
 -. var KRW에 KRW, currentcyRate에 따른 USD 반환값 저장할 수 있게 구현
 
 피드백
 -. var KRW 연산프로퍼티에서 재귀함수 오류 피하기 위해 backing storage로 _KRW 저장프로퍼티 필요함.
 -. KRW, currentcyRate에 따른 USD 반환값 저장할 수 있게 구현해야 함. 그래야 USD 반환값이 자동계산되고 willSet, didSet 호출 가능.
 -. 인스턴스 선언할 때 let이 아니라 var 사용해야함. : let rate(X) -> var rate(O)
 */


