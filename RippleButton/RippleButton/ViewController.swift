//
//  ViewController.swift
//  RippleButton
//
//  Created by cheonsong on 2022/04/18.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    var button = RippleButton().then {
        $0.setTitle("Hello World!", for: .normal)
        $0.setTitleColor(.black, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(button)
        button.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalTo(200)
            $0.height.equalTo(100)
        }
    }

}

