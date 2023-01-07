//
//  MainCollectionViewCell.swift
//  Test_Unsplash_App
//
//  Created by Михаил Светлов on 07.01.2023.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    lazy var randomImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "testImage"))
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(randomImage)
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    func configureAppearance() {
        randomImage.layer.cornerRadius = 12
        
        randomImage.translatesAutoresizingMaskIntoConstraints = false
        randomImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        randomImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        randomImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        randomImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
    }
    
}
