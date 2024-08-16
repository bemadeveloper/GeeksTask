//
//  CharacterDetailViewController.swift
//  GeeksTask
//
//  Created by Bema on 16/8/24.
//

import UIKit

class CharacterDetailViewController: UIViewController {
    let character: Character
    
    init(character: Character) {
        self.character = character
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        let statusLabel = UILabel()
        statusLabel.text = character.status
        statusLabel.textAlignment = .center
        statusLabel.font = UIFont.systemFont(ofSize: 24)
        
        switch character.status.lowercased() {
        case "alive":
            statusLabel.textColor = .green
        case "dead":
            statusLabel.textColor = .red
        default:
            statusLabel.textColor = .blue
        }
        
        statusLabel.frame = view.bounds
        view.addSubview(statusLabel)
    }
}
