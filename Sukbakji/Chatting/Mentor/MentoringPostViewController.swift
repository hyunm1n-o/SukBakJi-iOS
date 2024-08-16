//
//  MentoringPostViewController.swift
//  Sukbakji
//
//  Created by jaegu park on 8/17/24.
//

import UIKit

class MentoringPostViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var titleTV: UITextView!
    @IBOutlet weak var questionTV: UITextView!
    @IBOutlet weak var setButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeholderSetting()
        settingTextView()
        settingButton()
    }
    
    func settingTextView() {
        titleTV.backgroundColor = UIColor(hexCode: "F5F5F5")
        titleTV.addTVBottomShadow()
        titleTV.errorfix()
        titleTV.textContainerInset = UIEdgeInsets(top: 13, left: 16, bottom: 13, right: 16)
        questionTV.backgroundColor = UIColor(hexCode: "F5F5F5")
        questionTV.addTVBottomShadow()
        questionTV.errorfix()
        questionTV.textContainerInset = UIEdgeInsets(top: 13, left: 16, bottom: 13, right: 16)
    }
    
    func placeholderSetting() {
        titleTV.delegate = self
        titleTV.text = "• 포트폴리오 작성법                                                       • 대학원 입학 스펙                                                            • 교수님 솔직 후기                                                            • 졸업 후 전망"
        titleTV.font = UIFont(name: "Pretendard-Medium", size: 14)
        titleTV.textColor = UIColor(hexCode: "9F9F9F")
        questionTV.delegate = self
        questionTV.text = "• 졸업 후 대기업 취직 많이 하나요?                                • 포트폴리오에 어떤 내용이 들어가야 하나요?                 • 교수님 인품 좋으신가요?"
        questionTV.font = UIFont(name: "Pretendard-Medium", size: 14)
        questionTV.textColor = UIColor(hexCode: "9F9F9F")
    }
    
    func settingButton() {
        setButton.isEnabled = false
        setButton.layer.masksToBounds = true
        setButton.layer.cornerRadius = 10
        setButton.backgroundColor = UIColor(hexCode: "EFEFEF")
        setButton.setTitleColor(UIColor(hexCode: "9F9F9F"), for: .normal)
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
