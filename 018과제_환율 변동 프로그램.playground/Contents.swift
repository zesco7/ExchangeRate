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
                print("USD willSet - 환전 금액: USD: \(USD/currentcyRate)달러로 환전될 예정")
            }
            didSet {
                print("USD didSet - KRW: \(KRW)원 -> \(USD/currentcyRate)달러로 환전되었음")
            }
        }
 
    var _KRW = 0.0
    var KRW: Double {
        get {
            return _KRW
        }
        set {
            _KRW = newValue
        }
    }
}
 
var rate = ExchangeRate(currentcyRate: 1100, USD: 1)
rate.KRW = 500000
rate.currentcyRate = 1350
rate.KRW = 500000


