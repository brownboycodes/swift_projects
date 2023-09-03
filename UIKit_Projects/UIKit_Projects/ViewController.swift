//
//  ViewController.swift
//  UIKit_Projects
//
//  Created by nabhodipta on 01/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    var images = [String]()
    var textField = UITextField(frame: CGRect(origin: CGPoint(x: 50, y: 100), size: CGSize(width: 300, height: 30)))
    var text = UITextView()
        

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadImageFiles()
        
        print(images)
        self.view.frame = view.bounds
        view.backgroundColor=UIColor.lightGray
        textField.placeholder = "test text"
//        textField.backgroundColor = UIColor
        view.addSubview(textField)
    }
    
    func loadImageFiles() -> Void {
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath
        print("resource path is \(path ?? "NIL")")
        do{
            if path != nil {
                let items = try fileManager.contentsOfDirectory(atPath: path!)
//                print("files in LLApplicationDirectory are: \(fileManager.urls(for: .allApplicationsDirectory, in: .userDomainMask))")
                
                print("items found are \(items)")
                for item in items{
                    print("iterating over items")
                    if item.hasSuffix(".png") || item.hasSuffix(".jpg"){
                        images.append(item)
                    }else{
                        print("escaped file \(item)")
                    }
                }
                
            }
            
        }catch{
            print("something went wrong while loading image files \(error.localizedDescription)")
        }
    }

}

