//
//  HambugrerViewCell.swift
//  SlideMenuStoryBoard
//
//  Created by Ivan Ivanov on 4/17/21.
//

import UIKit

protocol HambugrerViewControllerDelegate {
    func hideHamburgerView()
}

class HambugrerViewController: UIViewController {

    @IBOutlet weak var mainBackground: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var delegate: HambugrerViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHanburgerUI()
        
    }
    
    private func setupHanburgerUI(){
        self.mainBackground.layer.cornerRadius = 40
        self.mainBackground.clipsToBounds = true
        
        self.profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        self.profileImageView.clipsToBounds = true
    }
      
    @IBAction func btnPressed(_ sender: UIButton) {
        delegate?.hideHamburgerView()
    }
    
}
