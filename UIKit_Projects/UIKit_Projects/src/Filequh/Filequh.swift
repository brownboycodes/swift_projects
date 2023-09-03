//
//  Filequh.swift
//  UIKit_Projects
//
//  Created by nabhodipta on 02/09/23.
//

import Foundation
import UIKit


class Filequh: UIViewController{
    
    override func viewDidLoad() {
//        navigationController?.navigationItem = UINavigationItem(title: "Filequh")
        self.title = "Filequh."
        let titleLabel = UILabel()
        titleLabel.text = title
//        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium, width: .standard)
        titleLabel.font = UIFont(name: "Poppins-Medium", size: 20)
        let width = view.bounds.width
        let height = view.bounds.height
        
        let folder1 = FolderShape(color:UIColor(red: 202.toCGFloat(), green: 233.toCGFloat(), blue: 255.toCGFloat(), alpha: 1.000),frame: CGRect(x: 0, y: 0, width: width, height: height-300))
        
        let neonBlueFolder = FolderShape(color: UIColor(red: 67.toCGFloat(), green: 97.toCGFloat(), blue: 238.toCGFloat(), alpha: 1.0), frame: CGRect(x: 0, y: 100, width: width, height: height-400))
        
        let yaleBlueFolder = FolderShape(color: UIColor(red: 2.toCGFloat(), green: 62.toCGFloat(), blue: 125.toCGFloat(), alpha: 1.0), frame: CGRect(x: 0, y: 200, width: width, height: height-500))
        
        let oxfordBlueFolder = FolderShape(color: UIColor(red: 0, green: 24.toCGFloat(), blue: 69.toCGFloat(), alpha: 1.0), frame: CGRect(x: 0, y: 300, width: width, height: height-300))
        
//        folder1.backgroundColor = .brown
        
        let column = UIStackView()
        column.axis = .vertical
        
        let stack = UIView()
        
        self.view.addSubview(column)
        column.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            column.topAnchor.constraint(equalTo: self.view.topAnchor),
            column.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            column.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            column.leftAnchor.constraint(equalTo: self.view.leftAnchor),
        ])
        column.addArrangedSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leftAnchor.constraint(equalTo: column.leftAnchor, constant: 24).isActive = true
        titleLabel.topAnchor.constraint(equalTo: column.topAnchor, constant: 30).isActive = true
        column.addArrangedSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.topAnchor.constraint(equalTo: column.topAnchor, constant: 160).isActive = true
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: column.topAnchor, constant: 130),
            stack.rightAnchor.constraint(equalTo: column.rightAnchor),
            stack.bottomAnchor.constraint(equalTo: column.bottomAnchor),
            stack.leftAnchor.constraint(equalTo: column.leftAnchor),
        ])

        stack.addSubview(folder1)
        stack.addSubview(neonBlueFolder)
        stack.addSubview(yaleBlueFolder)
        stack.addSubview(oxfordBlueFolder)
//        folder1.translatesAutoresizingMaskIntoConstraints = false
//        neonBlueFolder.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            folder1.topAnchor.constraint(equalTo: stack.topAnchor, constant: 0),

//            folder1.rightAnchor.constraint(equalTo: stack.rightAnchor),
//            folder1.bottomAnchor.constraint(equalTo: stack.bottomAnchor),
//            folder1.leftAnchor.constraint(equalTo: stack.leftAnchor),
//                    neonBlueFolder.topAnchor.constraint(equalTo: folder1.topAnchor, constant: 100)
//        ])
        
//        stack.addSubview(neonBlueFolder)
//        neonBlueFolder.translatesAutoresizingMaskIntoConstraints = false
//        neonBlueFolder.topAnchor.constraint(equalTo: stack.topAnchor, constant: 240).isActive = true
        
        let button = UIButton(frame: CGRect(x: Int(width*0.480), y: Int(height*0.84), width: 180, height: 72))
//        let buttonText = UILabel()
//        buttonText.text = "Get Started"
        button.backgroundColor = UIColor(red: 248.toCGFloat(), green: 249.toCGFloat(), blue: 250.toCGFloat(), alpha: 1.0)
        button.setTitle("Get Started", for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 18)
        button.setTitleColor(UIColor(red: 0, green: 24.toCGFloat(), blue: 69.toCGFloat(), alpha: 1.0), for: .normal)
        button.layer.cornerRadius = 36
        column.addSubview(button)
        
        let text1 = "The easiest way to manage your data"
        let text2 = "The best file manager to make your work easier"
        
        let textLabel1 = UILabel()
        textLabel1.text = text1
//        textLabel1.font = UIFont.systemFont(ofSize: 34, weight: .bold, width: .standard)
        textLabel1.textColor = .white
        textLabel1.numberOfLines = 0
        textLabel1.font = UIFont(name: "Poppins-SemiBold", size: 32)

        
        let textLabel2 = UILabel()
        textLabel2.text = text2
//        textLabel2.font = UIFont.systemFont(ofSize: 13, weight: .regular, width: .standard)
        textLabel2.font = UIFont(name: "Poppins-Regular", size: 12.48)
        textLabel2.textColor = UIColor(red: 222.toCGFloat(), green: 226.toCGFloat(), blue: 230.toCGFloat(), alpha: 1.0)
        
        let textColumn = UIStackView(frame: CGRect(x: 25, y: 400, width: Int(width*0.84), height: 120))
        textColumn.axis = .vertical
        
        textColumn.addArrangedSubview(textLabel1)
        textColumn.addArrangedSubview(textLabel2)
        stack.addSubview(textColumn)
        
        
    }
}

class FolderShape:UIView{
    var color:UIColor
    
    init(color:UIColor,frame:CGRect) {
//        super.init(frame: frame)
        
        self.color = color
        
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
//        self.frame = frame
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let width = self.bounds.width
        let height = self.bounds.height
        // Color Declaration
//        let color = UIColor(red: 202.toCGFloat(), green: 233.toCGFloat(), blue: 255.toCGFloat(), alpha: 1.000)
        

        // Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0, y: 36))
        bezierPath.addQuadCurve(to: CGPoint(x: 36, y: 0), controlPoint: CGPoint(x: 0, y: 0))
        bezierPath.addLine(to: CGPoint(x: 128, y: 0))
//        bezierPath.addQuadCurve(to: CGPoint(x: 132, y: 24), controlPoint: CGPoint(x: 132, y: 0))
//        bezierPath.addQuadCurve(to: CGPoint(x: 166, y: 48), controlPoint: CGPoint(x: 132, y: 48))
        bezierPath.addQuadCurve(to: CGPoint(x: 168, y: 54), controlPoint: CGPoint(x: 152, y: 0))
//        bezierPath.addCurve(to: CGPoint(x: 166, y: 72), controlPoint1: CGPoint(x: 143.5, y: 67.5), controlPoint2: CGPoint(x: 152.5, y: 76.5))
        bezierPath.addQuadCurve(to: CGPoint(x: 186, y: 72), controlPoint: CGPoint(x: 171.5, y: 69.3))
//
//        bezierPath.addQuadCurve(to: CGPoint(x: 184, y: 72), controlPoint: CGPoint(x: 154, y: 66))
        bezierPath.addLine(to: CGPoint(x: width-36, y: 72))
        bezierPath.addQuadCurve(to: CGPoint(x: width, y: 108), controlPoint: CGPoint(x: width, y: 72))
        bezierPath.addLine(to: CGPoint(x: width, y: height))
        bezierPath.addLine(to: CGPoint(x: 0, y: height))
        

        bezierPath.close()
        color.setFill()
        bezierPath.fill()
//        UIColor.black.setStroke()
//        bezierPath.lineWidth = 1
//        bezierPath.stroke()
    }
}

extension Int{
    func toCGFloat() -> CGFloat {
        return CGFloat(self)/255.0
    }
}
