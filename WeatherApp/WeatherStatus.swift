import SwiftUI

struct WeatherStatus: View {
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack(spacing: 8) {
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 160, height: 160)
      
      Text("\(temperature)°")
        .font(.system(size: 70, weight: .medium))
        .foregroundColor(.white)
    }
    .padding(.bottom, 40)
  }
}

struct WeatherStatus_Previews: PreviewProvider {
    static var previews: some View {
        WeatherStatus(imageName: "cloud.sun.fill", temperature: 76)
    }
}
