//
//  File.swift
//  Dangma
//
//  Created by 오준현 on 2020/11/14.
//

import UIKit

extension DetailViewController {
    
    func layout() {
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        scrollView.frame = CGRect(x: 0,
                                  y: -view.safeAreaInsets.top,
                                  width: view.frame.width,
                                  height: view.frame.height + 908)
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width,
                                        height: scrollView.frame.height + 500)
        scrollView.contentInset = .init(top: -48,
                                        left: 0,
                                        bottom: 0,
                                        right: 0)
        containerView.addSubview(collectionView)
        containerView.addSubview(backButton)
        containerView.addSubview(shareButton)
        containerView.addSubview(optionButton)
        containerView.addSubview(profileImageView)
        containerView.addSubview(pageControl)
        containerView.addSubview(nameLabel)
        containerView.addSubview(localLabel)
        containerView.addSubview(temperatureLabel)
        containerView.addSubview(smileImageView)
        containerView.addSubview(temperatureGuideLabel)
        containerView.addSubview(mannerLabel)
        containerView.addSubview(temperatureProgressBar)
        containerView.addSubview(splitView)
        containerView.addSubview(productLabel)
        containerView.addSubview(categoryLabel)
        containerView.addSubview(timeLabel)
        containerView.addSubview(contentLabel)
        containerView.addSubview(chatLabel)
        containerView.addSubview(interestingLabel)
        containerView.addSubview(lookLabel)
        view.addSubview(bottomContainerView)
        bottomContainerView.addSubview(heartButton)
        bottomContainerView.addSubview(bottomSplitView)
        bottomContainerView.addSubview(bottomTopSplitView)
        bottomContainerView.addSubview(priceLabel)
        bottomContainerView.addSubview(negoLabel)
        bottomContainerView.addSubview(chatButton)
        
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        bottomContainerView.translatesAutoresizingMaskIntoConstraints = false
        bottomSplitView.translatesAutoresizingMaskIntoConstraints = false
        bottomTopSplitView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            containerView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor),
            
            collectionView.topAnchor.constraint(equalTo: containerView.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: view.frame.width),
            
            pageControl.centerXAnchor.constraint(equalTo: collectionView.centerXAnchor),
            pageControl.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 0),
            
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            
            optionButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            optionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                   constant: -10),
            optionButton.widthAnchor.constraint(equalToConstant: 40),
            optionButton.heightAnchor.constraint(equalToConstant: 40),
            
            shareButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            shareButton.trailingAnchor.constraint(equalTo: optionButton.leadingAnchor,
                                                  constant: -10),
            shareButton.widthAnchor.constraint(equalToConstant: 40),
            shareButton.heightAnchor.constraint(equalToConstant: 40),
            
            profileImageView.topAnchor.constraint(equalTo: collectionView.bottomAnchor,
                                                  constant: 17),
            profileImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,
                                                      constant: 16),
            profileImageView.widthAnchor.constraint(equalToConstant: 40),
            profileImageView.heightAnchor.constraint(equalToConstant: 40),
            
            nameLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor,
                                               constant: 13),
            
            localLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,
                                            constant: 4),
            localLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            smileImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,
                                                     constant: -14),
            smileImageView.topAnchor.constraint(equalTo: nameLabel.topAnchor),
            smileImageView.widthAnchor.constraint(equalToConstant: 29),
            smileImageView.heightAnchor.constraint(equalToConstant: 29),
            
            temperatureLabel.topAnchor.constraint(equalTo: smileImageView.topAnchor),
            temperatureLabel.trailingAnchor.constraint(equalTo: smileImageView.leadingAnchor,
                                                       constant: -4),
            
            temperatureProgressBar.topAnchor.constraint(equalTo: temperatureLabel.bottomAnchor,
                                                        constant: 6),
            temperatureProgressBar.trailingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor),
            temperatureProgressBar.widthAnchor.constraint(equalToConstant: 53),
            temperatureProgressBar.heightAnchor.constraint(equalToConstant: 5),
            
            mannerLabel.topAnchor.constraint(equalTo: smileImageView.bottomAnchor,
                                             constant: 3),
            mannerLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,
                                                  constant: -17),
            
            splitView.topAnchor.constraint(equalTo: collectionView.bottomAnchor,
                                           constant: 72),
            splitView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,
                                               constant: 14),
            splitView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,
                                                constant: -14),
            splitView.heightAnchor.constraint(equalToConstant: 0.5),
            
            productLabel.topAnchor.constraint(equalTo: splitView.bottomAnchor,
                                              constant: 22),
            productLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,
                                                  constant: 16),
            
            categoryLabel.leadingAnchor.constraint(equalTo: productLabel.leadingAnchor),
            categoryLabel.topAnchor.constraint(equalTo: productLabel.bottomAnchor,
                                               constant: 12),
            
            timeLabel.leadingAnchor.constraint(equalTo: categoryLabel.trailingAnchor,
                                               constant: 1),
            timeLabel.topAnchor.constraint(equalTo: productLabel.bottomAnchor,
                                           constant: 12),
            contentLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor,
                                              constant: 14),
            contentLabel.leadingAnchor.constraint(equalTo: categoryLabel.leadingAnchor),
            
            bottomContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomContainerView.heightAnchor.constraint(equalToConstant: 74),
            
            bottomTopSplitView.topAnchor.constraint(equalTo: bottomContainerView.topAnchor),
            bottomTopSplitView.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor,
                                                        constant: 14),
            bottomTopSplitView.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor,
                                                         constant: -14),
            bottomTopSplitView.heightAnchor.constraint(equalToConstant: 0.5),
            
            chatButton.topAnchor.constraint(equalTo: bottomContainerView.topAnchor,
                                            constant: 18),
            chatButton.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor,
                                                 constant: -16),
            chatButton.widthAnchor.constraint(equalToConstant: 147),
            chatButton.heightAnchor.constraint(equalToConstant: 40),
            
            heartButton.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor,
                                                 constant: 19),
            heartButton.topAnchor.constraint(equalTo: bottomContainerView.topAnchor,
                                             constant: 27),
            heartButton.widthAnchor.constraint(equalToConstant: 20),
            heartButton.heightAnchor.constraint(equalToConstant: 18.3),
            
            bottomSplitView.topAnchor.constraint(equalTo: bottomContainerView.topAnchor,
                                                 constant: 20),
            bottomSplitView.leadingAnchor.constraint(equalTo: heartButton.trailingAnchor,
                                                     constant: 17),
            bottomSplitView.widthAnchor.constraint(equalToConstant: 1),
            bottomSplitView.heightAnchor.constraint(equalToConstant: 40),
            
            priceLabel.topAnchor.constraint(equalTo: bottomContainerView.topAnchor,
                                            constant: 18),
            priceLabel.leadingAnchor.constraint(equalTo: bottomSplitView.trailingAnchor,
                                                constant: 17),
            
            negoLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor,
                                           constant: 3),
            negoLabel.leadingAnchor.constraint(equalTo: priceLabel.leadingAnchor),
            
            chatLabel.topAnchor.constraint(equalTo: contentLabel.bottomAnchor,
                                           constant: 11),
            chatLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                               constant: 16),
            
            interestingLabel.topAnchor.constraint(equalTo: contentLabel.bottomAnchor,
                                           constant: 11),
            interestingLabel.leadingAnchor.constraint(equalTo: chatLabel.trailingAnchor,
                                               constant: 1),
            
            lookLabel.topAnchor.constraint(equalTo: contentLabel.bottomAnchor,
                                           constant: 11),
            lookLabel.leadingAnchor.constraint(equalTo: interestingLabel.trailingAnchor,
                                               constant: 1)

        ])
        
        bottomContainerView.backgroundColor = .white
        bottomTopSplitView.backgroundColor = .init(red: 102/255,
                                                   green: 102/255,
                                                   blue: 102/255,
                                                   alpha: 0.3)
        bottomSplitView.backgroundColor = .init(red: 102/255,
                                                green: 102/255,
                                                blue: 102/255,
                                                alpha: 0.3)
        
    }
    
}
