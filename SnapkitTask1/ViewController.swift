//
//  ViewController.swift
//  SnapkitTask1
//
//  Created by Feras Alshadad on 27/02/2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let profileImage = UIImageView()
    let nameLabel = UILabel()
    let usernameLabel = UILabel()
    let bioLabel = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(profileImage)
        view.addSubview(nameLabel)
        view.addSubview(usernameLabel)
        view.addSubview(bioLabel)
        
        setupUI()
        setupConstraints()
        
    }
    
    func setupUI() {
        profileImage.image = UIImage(named: "business+logo+design+18")
                profileImage.layer.cornerRadius = 50
                profileImage.layer.masksToBounds = true
                
                nameLabel.text = "CODED"
                nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
                nameLabel.textColor = .white


                usernameLabel.text = "joincoded"
                usernameLabel.textColor = .white
                
                bioLabel.text = "🥇 1st Coding Academy in the Middle East\n🧑🏻‍💻 Learn To Code Websites, Apps, & MORE\n👩🏻‍🎓 Intensive Courses & Bootcamps\n🚀 5,000+ Graduates Since 2015"

                bioLabel.textColor = .white
                bioLabel.numberOfLines = 4
        
    }
    func setupConstraints(){
        
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.width.height.equalTo(100)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(profileImage.snp.centerY)
            make.leading.equalToSuperview().offset(30)

        }
        
        usernameLabel.snp.makeConstraints { make in
            make.bottom.equalTo(nameLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(30)
        }
        
        bioLabel.snp.makeConstraints { make in
            make.bottom.equalTo(usernameLabel.snp.bottom).offset(120)
            make.leading.equalToSuperview().offset(20)
        }
        
        
        
    }
    
}
