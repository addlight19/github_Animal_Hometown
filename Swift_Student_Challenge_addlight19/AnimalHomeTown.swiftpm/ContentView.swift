import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State private var isLinkActive: Bool = false
    
    var body: some View {
        VStack{
            VStack {
                Text("Hometown Game")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(20)
            }
            Text("Find their Hometown!")
                .fontWeight(.medium)
            NavigationView {
                VStack {
                    Image("StartImage")
                        .resizable()
                        .frame(width: 800, height: 200)
                        .padding()
                    NavigationLink(
                        destination: TamarinView(isLinkActive: $isLinkActive),
                        isActive: $isLinkActive,
                        label: {
                            PrimaryButton(text: "Let's help them!")
                        })
                    .padding()
                    NavigationLink(
                        destination: IntroView(),
                        label: {
                            SubButton(text: "Hometown game?")
                    })
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            //페이지가 2개로 나타남
        }
        .edgesIgnoringSafeArea(.all)
        }
    }
