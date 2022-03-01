//
//  Home.swift
//  UI-486
//
//  Created by nyannyan0328 on 2022/03/01.
//

import SwiftUI

struct Home: View {
    @State var show : Bool = false
    var body: some View {
        GeometryReader{proxy in
            
            let size = proxy.size
            
            CubicTraslation(show: $show) {
                
                
                ZStack{
                
                    Image("p1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
         
                
                
                Button {
                    
                    
                    withAnimation(.easeInOut(duration: 1)){
                        
                        show.toggle()
                    }
                } label: {
                    
                    
                    Text("Navigate")
                        .font(.title2.weight(.semibold))
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.ultraThickMaterial)
                        .cornerRadius(10)
                        .environment(\.colorScheme, .dark)
                    
                }

            }
                
            } detail: {
                
                
                Image("p2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
                
                
                
                
                
            }
          
                
         
            
        }
        .ignoresSafeArea()
      
        .overlay(alignment: .top) {
            
            
            HStack(spacing:20){
                
                
                if show{
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "arrow.left")
                            .font(.title.weight(.semibold))
                            .foregroundColor(.white)
                    }
             

                }

                
                
                Text(show ? "Back" : "Custom Translation")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                
                
            }
            .padding()
            .padding(.horizontal)
            .frame(maxWidth:.infinity,alignment: show ? .leading : .center)
            .background(.ultraThinMaterial)
            .environment(\.colorScheme, .dark)
            
            
            
        }
        .onTapGesture {
            
            
            
            
            show.toggle()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
