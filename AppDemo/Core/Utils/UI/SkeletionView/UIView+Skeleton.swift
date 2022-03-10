//
//  SkeletonView.swift
//  Pods
//
//  Created by Ziad Ghali on 12/8/19.
//

import Foundation
import UIKit

extension UIView {
    public func skeleton(with color: UIColor = .darkGray, enable: Bool, rounded: Bool = false, size: CGSize? = nil) {
        isUserInteractionEnabled = !enable
        if enable, !isAnimating() {
            let gradientView = UIView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
            gradientView.tag = -1
            gradientView.backgroundColor = color
            gradientView.layer.cornerRadius = rounded ? gradientView.frame.size.height / 2 : 3
            gradientView.clipsToBounds = true
            addSubview(gradientView)
            gradientView.fillInView(self)
            bringSubviewToFront(gradientView)
            addGradientSublayerWithAnimation(gradientView: gradientView, color: color, size: size)
        } else if !enable, isAnimating() {
            viewWithTag(-1)?.removeFromSuperview()
        }
        layoutSubviews()
    }

    private func isAnimating() -> Bool {
        if viewWithTag(-1) != nil {
            return true
        }
        return false
    }

    private func addGradientSublayerWithAnimation(gradientView: UIView, color: UIColor, size: CGSize? = nil) {
        gradientView.layoutIfNeeded()
        let gradienntLayer = CAGradientLayer(layer: gradientView.layer)
        gradienntLayer.colors = [color.cgColor, UIColor.clear.cgColor]
        gradienntLayer.locations = [0, 1]
        gradienntLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradienntLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradienntLayer.frame = size == nil ? CGRect(x: 0, y: 0, width: gradientView.frame.size.width * 1.5, height: gradientView.frame.size.height * 1.5) : CGRect(origin: .zero, size: size!)

        let startPointAnim = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.startPoint))
        startPointAnim.fromValue = CGPoint(x: -1, y: 0.5)
        startPointAnim.toValue = CGPoint(x: 1, y: 0.5)

        let endPointAnim = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.endPoint))
        endPointAnim.fromValue = CGPoint(x: 0, y: 0.5)
        endPointAnim.toValue = CGPoint(x: 2, y: 0.5)

        let animGroup = CAAnimationGroup()
        animGroup.animations = [startPointAnim, endPointAnim]
        animGroup.duration = 1.5
        animGroup.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        animGroup.repeatCount = .infinity

        gradienntLayer.add(animGroup, forKey: "skeletonAnimation")
        gradientView.layer.addSublayer(gradienntLayer)
        gradientView.updateConstraintsIfNeeded()
        gradientView.layoutIfNeeded()
    }
    
    func fillInView(_ container: UIView!) {
        translatesAutoresizingMaskIntoConstraints = false
        frame = container.frame
        container.addSubview(self)
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
}
