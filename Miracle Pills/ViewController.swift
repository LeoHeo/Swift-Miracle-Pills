//
//  ViewController.swift
//  Miracle Pills
//
//  Created by JinHan on 2016. 9. 25..
//  Copyright © 2016년 JinHan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    /*------------------------------------
     UIPickerViewDelegate는 UIPickerView에서
     스크롤링, 선택 같은 행위를 할때 불러올수 있는 함수들이 있음
    --------------------------------------*/
    
    // weak는 약함 참조
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]

    override func viewDidLoad(){
        super.viewDidLoad()
        self.statePicker.dataSource = self //
        self.statePicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: UIButton) {
        statePicker.isHidden = false
    }
    
    
    /*-----------------------------
        필수 정의 함수 2개
        DataSource 함수 2개
        - numberOfComponents
        - pickerView(numberOfRowsInComponent)
     -----------------------*/
    
    // How may Components
    // 화면에 UIPickerView가 몇개가 나올것이냐
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 화면에 뿌릴 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // UIPickerView Display name
    // 이 함수가 없을 경우 ?로 도배된 UIPickerView가 나온다
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // UIPickerView Select
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
    }
}

