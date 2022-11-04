import SwiftUI
struct DefaultColorTheme {
    let primary: Color = .blue
    let secondary: Color = .white
    let tertiarty: Color = .gray
}

struct AlternativeColorTheme {
    let primary: Color = .red
    let secondary: Color = .white
    let tertiarty: Color = .green
}

protocol ColorThemeProtocol {
    /// The Protocols are set of rules or requirements that struct or class need to have
    var primary: Color { get }
    /// we can only get(fetch) its value but we can't change this value - if we want to change it we need to add { get set }
    var secondary: Color { get }
    var tertiarty: Color { get }
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
