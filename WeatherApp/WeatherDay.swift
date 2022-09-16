import SwiftUI

struct WeatherDay: View {
  
  var dayOfWeek: String
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack {
      Text(dayOfWeek)
        .font(.system(size: 16, weight: .medium, design: .default))
        .foregroundColor(.white)
      
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 40, height: 40)
      
      Text("\(temperature)°")
        .foregroundColor(.white)
        .font(.system(size: 28, weight: .medium))
    }
  }
}

struct WeatherDay_Previews: PreviewProvider {
  static var previews: some View {
      WeatherDay(dayOfWeek: "TUE",
                 imageName: "cloud.sun.fill",
                 temperature: 74)
  }
}
