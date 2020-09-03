//
//  ViewController.swift
//  Calculadora
//
//  Created by Rafael Jose on 31/08/20.
//  Copyright © 2020 Rafael Jose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnDigitoNove: UIButton!
    @IBOutlet weak var btnDigitoOito: UIButton!
    @IBOutlet weak var btnDigitoSete: UIButton!
    @IBOutlet weak var btnDigitoSeis: UIButton!
    @IBOutlet weak var btnDigitoCinco: UIButton!
    @IBOutlet weak var btnDigitoQuatro: UIButton!
    @IBOutlet weak var btnDigitoTres: UIButton!
    @IBOutlet weak var btnDigitoDois: UIButton!
    @IBOutlet weak var btnDigitoUm: UIButton!
    @IBOutlet weak var btnDigitoZero: UIButton!
    
    @IBOutlet weak var btnDigitoDivisor: UIButton!
    @IBOutlet weak var btnDigitoMultiplicacao: UIButton!
    @IBOutlet weak var btnDigitoMenos: UIButton!
    @IBOutlet weak var btnDigitoMais: UIButton!
    @IBOutlet weak var btnDigitoIgual: UIButton!
    
    @IBOutlet weak var txtResultado: UITextField!
    var valorAntecessor: Double = 0
    var operacao: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtResultado.text = "0"
        btnDigitoNove.layer.cornerRadius = 10
        btnDigitoOito.layer.cornerRadius = 10
        btnDigitoSete.layer.cornerRadius = 10
        btnDigitoSeis.layer.cornerRadius = 10
        btnDigitoCinco.layer.cornerRadius = 10
        btnDigitoQuatro.layer.cornerRadius = 10
        btnDigitoTres.layer.cornerRadius = 10
        btnDigitoDois.layer.cornerRadius = 10
        btnDigitoUm.layer.cornerRadius = 10
        btnDigitoZero.layer.cornerRadius = 10
        
        btnDigitoDivisor.layer.cornerRadius = 10
        btnDigitoMultiplicacao.layer.cornerRadius = 10
        btnDigitoMenos.layer.cornerRadius = 10
        btnDigitoMais.layer.cornerRadius = 10
        btnDigitoIgual.layer.cornerRadius = 10
    }
    
    @IBAction func btnZero(_ sender: Any) {
        concatenarNumero(valor: "0")
    }
    
    
    @IBAction func btnUm(_ sender: UIButton) {
       concatenarNumero(valor: "1")
    }
    
    
    @IBAction func btnDois(_ sender: Any) {
       concatenarNumero(valor: "2")
    }
    
    
    @IBAction func btnTres(_ sender: Any) {
       concatenarNumero(valor: "3")
    }
    
    
    @IBAction func btnQuatro(_ sender: Any) {
       concatenarNumero(valor: "4")
    }
    
    
    @IBAction func btnCinco(_ sender: Any) {
       concatenarNumero(valor: "5")
    }
    
    
    @IBAction func btnSeis(_ sender: Any) {
       concatenarNumero(valor: "6")
    }
    
    
    @IBAction func btnSete(_ sender: Any) {
       concatenarNumero(valor: "7")
    }
    
    @IBAction func btnOito(_ sender: Any) {
       concatenarNumero(valor: "8")
    }
    
    
    @IBAction func btnNove(_ sender: Any) {
       concatenarNumero(valor: "9")
    }
    
    
    @IBAction func btnIgual(_ sender: Any) {
        var novoValor: String = "0"
        
        if txtResultado.text != nil {
            novoValor = txtResultado.text!
        }
        
        if operacao == "+" {
                     valorAntecessor = valorAntecessor + Double(novoValor)!
                      txtResultado.text = "0"
                  }
        else if operacao == "-" {
           valorAntecessor = valorAntecessor - Double(novoValor)!
            txtResultado.text = "0"
        } else if operacao == "x" {
           valorAntecessor = valorAntecessor * Double(novoValor)!
            txtResultado.text = "0"
        }  else if operacao == "/" {
                  valorAntecessor = valorAntecessor / Double(novoValor)!
                   txtResultado.text = "0"
               }
        
        txtResultado.text = "\(valorAntecessor)"
        operacao = "="
        valorAntecessor = 0
    }
    
    
    @IBAction func btnDivisao(_ sender: Any) {
        calcular(operador: "/")
    }
    
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        calcular(operador: "x")
    }
    
    
    @IBAction func btnSubtrair(_ sender: Any) {
        calcular(operador: "-")
    }
    
    
    @IBAction func btnSomar(_ sender: Any) {
        calcular(operador: "+")
    }
    
    @IBAction func btnResultado(_ sender: Any) {
    }
    
    func concatenarNumero(valor: String) {
        if operacao == "=" {
            txtResultado.text = "\(valor)"
            operacao = ""
            valorAntecessor = 0
        } else {
            let valor: Int = Int("\(txtResultado.text!)\(valor)")!
            txtResultado.text = "\(valor)"
        }
    }
    
    func  calcular(operador: String) {
        var novoValor: String = "0"
         
         if txtResultado.text != nil {
             novoValor = txtResultado.text!
         }
         
         // Verificando se a operacao foi preenchida
         if operacao != "" && operacao != "=" {
             if operador == "+" {
                valorAntecessor = valorAntecessor + Double(novoValor)!
                 txtResultado.text = "0"
                 operacao = "+"
             } else   if operador == "-" {
                           valorAntecessor = valorAntecessor - Double(novoValor)!
                            txtResultado.text = "0"
                            operacao = "-"
                        }
            else   if operador == "x" {
               valorAntecessor = valorAntecessor * Double(novoValor)!
                txtResultado.text = "0"
                operacao = "x"
             } else {
                valorAntecessor = valorAntecessor / Double(novoValor)!
                            txtResultado.text = "0"
                            operacao = "/"
            }
            
         } else {
        
         valorAntecessor = Double(novoValor)!
         operacao = operador
         txtResultado.text = "0"
         }
    }
    
}

