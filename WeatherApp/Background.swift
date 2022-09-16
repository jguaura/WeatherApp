import SwiftUI

struct Background: View {
  
  @Binding var isNight: Bool
  
  var body: some View {
    LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("bgBlue")]),
                   startPoint: .topLeading,
                   endPoint: .bottomTrailing)
    .edgesIgnoringSafeArea(.all)
  }
}


struct Background_Previews: PreviewProvider {
    static var previews: some View {
      Background(isNight: .constant(true))
    }
}
