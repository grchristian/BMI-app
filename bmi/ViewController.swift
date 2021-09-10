//
//  ViewController.swift
//  bmi
//
//  Created by Christian González on 30/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    var IMC = 0.0
    
    @IBOutlet weak var pesoText: UITextField!
    
    @IBOutlet weak var estaturaText: UITextField!
    
    
    @IBAction func cerrarTeclado(_ sender: UITapGestureRecognizer) {
        pesoText.resignFirstResponder()
        estaturaText.resignFirstResponder()
    }
    
    @IBAction func calcularIBM(_ sender: UIButton) {
        let peso = Double(pesoText.text!)
        let estatura = Double(estaturaText.text!)
        
        IMC = round(peso!/(estatura!*estatura!))
        
        print(IMC)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let sigVista = segue.destination as! resultadosViewController
        sigVista.IMC = self.IMC 
    }
    


}

