//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Евгений on 07.03.2020.
//  Copyright © 2020 Евгений. All rights reserved.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: Table view delegate
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let actionSheet = UIAlertController(title: nil,
                                                message: nil,
                                                preferredStyle: .actionSheet)
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in
                //TO DO: вызывать метод для вызова изобрадения
            }
            let photo = UIAlertAction(title: "Photo", style: .default) { _ in
                //TO DO: вызывать метод для выбора изображения из галереи
            }
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            
            actionSheet.addAction(camera)
            actionSheet.addAction(photo)
            actionSheet.addAction(cancel)
            
            present(actionSheet, animated: true)
        } else {
            view.endEditing(true)
        }
    }
}

//MARK: Text field delegate

extension NewPlaceViewController: UITextFieldDelegate {
    
    // Скрываем клавиатуру нажатию на Done
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
