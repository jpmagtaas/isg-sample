//
//  UIKitRecentListView.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/12/24.
//

import Foundation
import UIKit

// This is a sample UIKit Integration
class ChatView: UIView {
    
    private let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = AppStyle.IconSize.large / 2
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: AppStyle.FontSize.title)
        return label
    }()
   
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: AppStyle.FontSize.footnote)
        label.textColor = .gray
        return label
    }()
   
   private let messageLabel: UILabel = {
       let label = UILabel()
       label.font = UIFont.systemFont(ofSize: AppStyle.FontSize.subtitle)
       label.textColor = .gray
       label.numberOfLines = 1
       return label
   }()
    
    init(chat: Chat) {
        super.init(frame: .zero)

        setupViews()
        setupContent(chat: chat)
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupContent(chat: Chat) {
        // Configure with chat data
        nameLabel.text = chat.name
        dateLabel.text = chat.date
        messageLabel.text = chat.recentMessage

        // Load avatar image asynchronously
        DispatchQueue.global().async {
            if let url = URL(string: chat.avatarUrl),
               let data = try? Data(contentsOf: url),
               let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.avatarImageView.image = image
                }
            }
        }
    }
    
    private func setupViews() {
        let horizontalStackView = UIStackView()
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = AppStyle.SpacingSize.medium

        addSubview(horizontalStackView)
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            horizontalStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: AppStyle.SpacingSize.extraLarge),
            horizontalStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -(AppStyle.SpacingSize.extraLarge)),
            horizontalStackView.topAnchor.constraint(equalTo: topAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.widthAnchor.constraint(equalToConstant: AppStyle.IconSize.large).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: AppStyle.IconSize.large).isActive = true
        
        horizontalStackView.addArrangedSubview(avatarImageView)
        
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.spacing = AppStyle.SpacingSize.small
        horizontalStackView.addArrangedSubview(verticalStackView)
        
        let titleStackView = UIStackView()
        titleStackView.axis = .horizontal
        titleStackView.spacing = AppStyle.SpacingSize.small
        titleStackView.addArrangedSubview(nameLabel)
        titleStackView.addArrangedSubview(dateLabel)
        
        verticalStackView.addArrangedSubview(titleStackView)
        verticalStackView.addArrangedSubview(messageLabel)
    }
}
