//
//  DetailViewController.swift
//  Dangma
//
//  Created by 오준현 on 2020/11/14.
//

import UIKit
import MessageUI

class DetailViewController: UIViewController {
    
    let scrollView = UIScrollView()
    
    let containerView = UIView()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.isPagingEnabled = true
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        
        pageControl.currentPage = 0
        pageControl.numberOfPages = 6
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "iconBack"), for: .normal)
        button.addTarget(self,
                         action: #selector(didTapBackButton),
                         for: .touchUpInside)
        return button
    }()
    
    let shareButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named: "iconShare"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let optionButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named: "iconMorevert"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 20
        imageView.backgroundColor = .cyan
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "apple"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let localLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "성수동 3가"
        return label
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "38.7℃"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .init(red: 57/255,
                                green: 152/255,
                                blue: 73/255,
                                alpha: 1)
        return label
    }()
    
    let temperatureProgressBar: UIProgressView = {
        let p = UIProgressView()
        p.translatesAutoresizingMaskIntoConstraints = false
        p.backgroundColor = .init(red: 234/255,
                                  green: 234/255,
                                  blue: 234/255,
                                  alpha: 0.5)
        p.tintColor = .init(red: 57/255,
                            green: 152/255,
                            blue: 73/255,
                            alpha: 1)
        let temp: Float = 38.7 / 100
        p.setProgress(temp, animated: false)
        return p
    }()
    
    let mannerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "매너온도"
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor = .init(red: 102/255,
                                green: 102/255,
                                blue: 102/255,
                                alpha: 1)
        return label
    }()
    
    let smileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "icSmile")
        return imageView
    }()
    
    let temperatureGuideLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let splitView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .init(red: 102/255,
                                  green: 102/255,
                                  blue: 102/255,
                                  alpha: 0.3)
        return v
    }()
    
    let productLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 19, weight: .bold)
        label.text = "아이폰 11 pro black"
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.text = "IT 전자기기·"
        label.textColor = UIColor.init(red: 153/255,
                                       green: 153/255,
                                       blue: 153/255,
                                       alpha: 1)

        return label
    }()
    
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.text = "끌올 19분 전"
        label.textColor = UIColor.init(red: 153/255,
                                       green: 153/255,
                                       blue: 153/255,
                                       alpha: 1)
        return label
    }()

    let chatLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.text = "채팅 0·"
        label.textColor = UIColor.init(red: 153/255,
                                       green: 153/255,
                                       blue: 153/255,
                                       alpha: 1)
        return label
    }()
    
    let interestingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.text = "관심 1·"
        label.textColor = UIColor.init(red: 153/255,
                                       green: 153/255,
                                       blue: 153/255,
                                       alpha: 1)

        return label
    }()
    
    let lookLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12, weight: .medium)
        label.text = "조회 102"
        label.textColor = UIColor.init(red: 153/255,
                                       green: 153/255,
                                       blue: 153/255,
                                       alpha: 1)

        return label
    }()

    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .medium)
        let text = """
        작년에 구매했는데 1년정도 사용했습니다.
        (실사는 좀 더 밝은 검은색이에요)
        자세한 건 사진 넘겨서 봐주세요.
        애플 스토어에서 정품 구매했습니다.
        직거래는 성수동 근처 우대합니다!
        """
        label.setTextWithLineHeight(text: text, lineHeight: 23)
        return label
    }()
    
    let bottomContainerView = UIView()
    
    let heartButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "heart"), for: .normal)
        return button
    }()
    
    let bottomSplitView = UIView()
    let bottomTopSplitView = UIView()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 15, weight: .heavy)
        label.text = "400,000원"
        return label
    }()
    
    let negoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 13,
                                 weight: .semibold)
        label.text = "가격제안불가"
        label.textColor = UIColor.init(red: 153/255,
                                       green: 153/255,
                                       blue: 153/255,
                                       alpha: 1)
        return label
    }()
    
    let chatButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.init(red: 1,
                                              green: 138/255,
                                              blue: 61/255,
                                              alpha: 1)
        button.layer.cornerRadius = 5
        button.setTitle("채팅으로 거래하기", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15,
                                              weight: .semibold)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self

        layout()
        
        scrollView.delegate = self
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(DetailCVCell.self,
                                forCellWithReuseIdentifier: DetailCVCell.reuseIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigation()
    }
    
    func navigation() {
        navigationController?.isNavigationBarHidden = true
    }
    
    @objc
    func didTapBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension DetailViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView,
                                   withVelocity velocity: CGPoint,
                                   targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        if scrollView == collectionView {
            let page = Int(targetContentOffset.pointee.x / view.frame.width)
            self.pageControl.currentPage = page
        }
    }
}

extension DetailViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.width)
    }
}

extension DetailViewController: UICollectionViewDelegate { }

extension DetailViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DetailCVCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
        
        cell.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        
        cell.cellLayout()
        
        return cell
    }
    
}

extension UILabel {
    
    func setLineHeight(lineHeight: CGFloat) {
        let text = self.text
        if let text = text {
            let attributeString = NSMutableAttributedString(string: text)
            let style = NSMutableParagraphStyle()
            
            style.lineSpacing = lineHeight
            attributeString.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSMakeRange(0, attributeString.length))
            self.attributedText = attributeString
        }
    }

    func setTextWithLineHeight(text: String?, lineHeight: CGFloat) {
        if let text = text {
            let style = NSMutableParagraphStyle()
            style.maximumLineHeight = lineHeight
            style.minimumLineHeight = lineHeight
            
            let attributes: [NSAttributedString.Key: Any] = [
                .paragraphStyle: style
            ]
                
            let attrString = NSAttributedString(string: text,
                                                attributes: attributes)
            self.attributedText = attrString
        }
    }

}

extension DetailViewController: UIGestureRecognizerDelegate {}
