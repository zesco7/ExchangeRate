//
//  LottoViewController.swift
//  019_Practice
//
//  Created by Mac Pro 15 on 2022/07/30.
//

import UIKit

class LottoViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    //@IBOutlet weak var pickerView: UIPickerView!

    //번호 역순 표시
    let numberlist: [Int] = Array(1...1025).reversed()
    
    //코드로 뷰를 만들기
    var pickerView = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //텍스트필드 눌렀을때 키보드 가리지 않게 만들어주기
        numberTextField.inputView = pickerView
        numberTextField.tintColor = .clear
        
        //원래 UIPickerViewDelegate, UIPickerViewDataSource는 UIPickerView안에 구현해야하는데 LottoViewController에서 구현되고 있으므로 LottoViewController가 pickerview의 Delegate, DataSource 역할을 할 수 있도록 명시해줌.
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    


}

//나중에 화면에 테이블뷰, 컬렉션뷰처럼 다른 요소가 들어가면 코드가 길어지므로 UIPickerViewDelegate, UIPickerViewDataSource을 extension으로 만들어줌
extension LottoViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numberlist.count
    }
    
    //pickerview component
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        numberTextField.text = "\(numberlist[row])회차"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(numberlist[row])회차"
    }
}
