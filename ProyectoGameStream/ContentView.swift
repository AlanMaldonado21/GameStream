//
//  ContentView.swift
//  ProyectoGameStream
//
//  Created by Alan on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        
        ZStack{
            
            
            Color(red: 19/255, green: 30/255, blue:53/255, opacity: 1.0).ignoresSafeArea()
            
            VStack{
                
                Image("appLogo").resizable().aspectRatio( contentMode:.fit).frame(width: 260).padding(.top, 20)
                
                
                InicioYRegistroView()
                
            }
            
            
            
            
        }
        
        
        
    }
}

struct InicioYRegistroView : View {
    
    @State var tipoInicioSesion = true
    
    var body : some View{
        
        
        VStack{
            
            HStack{
                Button(action: {
                  tipoInicioSesion = true
                        
                    
                }) {
                    Text("INICIAR SESIÓN").foregroundColor(tipoInicioSesion ? .white : .gray).padding(.trailing, 70).bold()
                }
                
                Button(action: {
                    tipoInicioSesion = false
                }) {
                    Text("REGISTRATE").foregroundColor(tipoInicioSesion ? .gray : .white).bold()
                }
            }
            
        }.padding(.top, 40)
        
        if tipoInicioSesion == true {
            InicioSesionView()
        }else {
            RegistroView()
        }
    }
    
    
   
    
}

struct InicioSesionView : View {
    
    @State var correoElectronico : String = ""
    @State var contraseña : String = ""
    var body : some View {
        
        ScrollView{
            
            
            
            VStack(alignment: .leading){
                
                Text("Correo electrónico").foregroundColor(Color("Dark-Cian")).padding(.top, 15).bold()
                
                ZStack(alignment: .leading){
                    
                    if correoElectronico.isEmpty{
                        Text(verbatim: "ejemplo@gmail.com").font(.caption).foregroundColor(.gray)
                    }
                    
                    
    
                    TextField("", text: $correoElectronico)
                    
                    }
                Divider().frame(height: 1).background(.gray)
                
                
                VStack(alignment: .leading){
                    
                    Text("Contraseña").foregroundColor(.white).bold()
                    
                    ZStack(alignment: .leading){
                        
                        if contraseña.isEmpty{
                            Text("Ingrese su contraseña").foregroundColor(.gray).font(.caption)
                        }
                        
                       
                        TextField("****", text: $contraseña)
                        
                        
                    }
                    Divider().frame(height: 1).background(.gray)
                    
                }
                
            }
            
        }.padding(.horizontal, 40)
        
        
    }
    
}


struct RegistroView : View {
    
    var body : some View {
        Text("estado de registro").foregroundColor(.white)
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
