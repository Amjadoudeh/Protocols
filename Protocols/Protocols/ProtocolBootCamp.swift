import SwiftUI
struct DefaultColorTheme {
    let primary: Color = .blue
    let secondary: Color = .white
    let tertiarty: Color = .gray
}

struct ProtocolBootCamp: View {
    // instance
    let colorTheme: DefaultColorTheme = DefaultColorTheme()
    
    var body: some View {

        ZStack{
            colorTheme.tertiarty
                .ignoresSafeArea()
            
            Text("Protocols are awesome")
                .font(.headline)
                .foregroundColor(colorTheme.secondary)
                .padding()
                .background(colorTheme.primary)
                .cornerRadius(10)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProtocolBootCamp()
    }
}
