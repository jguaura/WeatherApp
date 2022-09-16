import SwiftUI

struct CityText: View {
  var cityName: String
  
  var body: some View {
    Text(cityName)
      .font(.system(size: 32, weight: .medium, design: .default))
      .foregroundColor(.white)
      .padding()
  }
}


struct CityText_Previews: PreviewProvider {
    static var previews: some View {
        CityText(cityName: "Pepega")
    }
}
