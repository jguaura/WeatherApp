import SwiftUI

struct ContentView: View {
  
  @State private var isNight = false
  
  var body: some View {
    ZStack {
      
      Background(isNight: $isNight)
      
      VStack {
        CityText(cityName: "Cupertino, CA")
        
        WeatherStatus(imageName: isNight ? "moon.fill" : "cloud.sun.fill",
                      temperature: 76)
        
        HStack(spacing: 20) {
          WeatherDay(dayOfWeek: "TUE",
                     imageName: "cloud.sun.fill",
                     temperature: 74)
          WeatherDay(dayOfWeek: "WED",
                     imageName: "sun.max.fill",
                       temperature: 88)
          WeatherDay(dayOfWeek: "THU",
                         imageName: "wind.snow",
                         temperature: 55)
          WeatherDay(dayOfWeek: "FRI",
                         imageName: "sunset.fill",
                         temperature: 60)
          WeatherDay(dayOfWeek: "SAT",
                         imageName: "snow",
                         temperature: 25)
        }
        
        Spacer()
        
        Button {
          isNight.toggle()
        } label: {
          WeatherButton(title: "Change Day Time",
                        textColor: .blue,
                        backgroundColor: .white)
        }
        
        Spacer()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
