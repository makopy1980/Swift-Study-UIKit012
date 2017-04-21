//
//  FirstViewController.swift
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private & Internal Methods
    
    /// Viewの設定
    private func setupView() {
        self.title = "First View"
        self.view.backgroundColor = UIColor.cyan
        
        // ボタンの設定
        self.setupButton()
    }
    
    /// ボタンの設定
    private func setupButton() {
        let buttonSize = CGSize(width: 100.0,
                                height: 50.0)
        let buttonPoint = CGPoint(x: (self.view.bounds.width - buttonSize.width) / 2,
                                  y: 200)
        let buttonRect = CGRect(origin: buttonPoint,
                                size: buttonSize)
        
        let button = UIButton(frame: buttonRect)
        
        button.backgroundColor = UIColor.orange
        button.setTitle("ボタン",
                        for: .normal)
        
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 20.0
        
        button.addTarget(self,
                         action: #selector(onButtonTapped(sender:)),
                         for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    /// ボタンイベント
    internal func onButtonTapped(sender: UIButton) {
        // SecondViewControllerに遷移
        self.navigationController?.pushViewController(SecondViewController(),
                                                      animated: true)
    }
}
