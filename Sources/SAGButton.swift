//
//  File.swift
//  sagaKit
//
//  Created by Guillermo Moral on 28/03/2025.
//

import UIKit

public class SMPButton: UIButton {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupStyle()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupStyle()
    }

    private func setupStyle() {
        backgroundColor = UIColor.systemBlue
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        layer.cornerRadius = 12
        clipsToBounds = false

        // Sombra
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 6
        layer.shadowOpacity = 0.25

        // Padding
        contentEdgeInsets = UIEdgeInsets(top: 12, left: 20, bottom: 12, right: 20)
    }

    public override var isHighlighted: Bool {
        didSet {
            alpha = isHighlighted ? 0.7 : 1.0
        }
    }

    public func getInfo() {
        print(">>> Button Info <<<")
    }
}
