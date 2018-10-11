//
//  CarrosViewController.swift
//  FoodTracker
//
//  Created by Diego Campo on 10/9/18.
//  Copyright © 2018 Diego Campo. All rights reserved.
//

import UIKit

class CarrosViewController: UIViewController {
    @IBOutlet weak var labelTitulo: UILabel!
    var objetoMazda3:Mazda3?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitulo.text = "Car Factory"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func crearMazda(_ sender: UIButton) {
        objetoMazda3 = Mazda3()
        print("objeto mazda creado")
    }
    
    @IBAction func mostrarPropiedades(_ sender: UIButton) {
        if objetoMazda3==nil {
            print("el objeto no existe todavía")
        }else{
        print("color: \(objetoMazda3!.color), tamaño: \(objetoMazda3!.tamanho), puertas: \(objetoMazda3!.numeroPuertas) y precio: \(objetoMazda3!.precio)")
        }
    }
    
    @IBAction func encenderMazda(_ sender: UIButton) {
        if objetoMazda3 != nil{
            objetoMazda3!.encender() 
        }
    }
    
    @IBAction func acelerar(_ sender: UIButton) {
        if objetoMazda3 != nil{
            objetoMazda3!.acelerar()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
