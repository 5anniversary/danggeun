//
//  DetailCVCell.swift
//  Dangma
//
//  Created by 오준현 on 2020/11/18.
//

import UIKit

class DetailCVCell: UICollectionViewCell {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let shadowImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "darkImg")
        return imageView
    }()
    
    func cellLayout() {
        contentView.addSubview(imageView)
        contentView.addSubview(shadowImage)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            shadowImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            shadowImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            shadowImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            shadowImage.heightAnchor.constraint(equalToConstant: contentView.frame.height/2)
        ])
    }
}
