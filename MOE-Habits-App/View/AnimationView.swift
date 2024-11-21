import SwiftUI

struct AnimationView: View {
    @State private var showText = false
    @State private var moveToTopLeft = false

    var body: some View {
        ZStack {
            Color(red: 35/255, green: 35/255, blue: 35/255)
                .edgesIgnoringSafeArea(.all)

         
            VStack(alignment: .leading, spacing: 15) {
                Text("GO FOR")
                    .font(.system(size: 80))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .opacity(showText ? 1 : 0)
                    .scaleEffect(moveToTopLeft ? 0.8 : 1)
                    .offset(x: moveToTopLeft ? -70 : 0, y: moveToTopLeft ? -50 : 0)
                    .animation(.easeOut(duration: 1), value: moveToTopLeft)
                    .padding()

                Text("Better")
                    .font(.system(size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                    .opacity(showText ? 1 : 0)
                    .scaleEffect(moveToTopLeft ? 0.8 : 1)
                    .offset(x: moveToTopLeft ? -70 : 0, y: moveToTopLeft ? -100 : 0)
                    .animation(.easeOut(duration: 1).delay(0.2), value: moveToTopLeft)
                    .padding()

                Text("Habit")
                    .font(.system(size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                    .opacity(showText ? 1 : 0)
                    .scaleEffect(moveToTopLeft ? 0.8 : 1)
                    .offset(x: moveToTopLeft ? -70 : 0, y: moveToTopLeft ? -150 : 0)
                    .animation(.easeOut(duration: 1).delay(0.4), value: moveToTopLeft)
                    .padding()
                Text("With")
                    .font(.system(size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .opacity(showText ? 1 : 0)
                    .scaleEffect(moveToTopLeft ? 0.8 : 1)
                    .offset(x: moveToTopLeft ? -70 : 0, y: moveToTopLeft ? -200 : 0)
                    .animation(.easeOut(duration: 1).delay(0.6), value: moveToTopLeft)
                    .padding()
                Text("MOE")
                    .font(.system(size: 70))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .opacity(showText ? 1 : 0)
                    .scaleEffect(moveToTopLeft ? 0.8 : 1)
                    .offset(x: moveToTopLeft ? -70 : 0, y: moveToTopLeft ? -250 : 0)
                    .animation(.easeOut(duration: 1).delay(0.8), value: moveToTopLeft)
                    .padding()
            }
            
            .onAppear {
                showText = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    moveToTopLeft = true
                }
            }
        }
    }
}

#Preview {
    AnimationView()
}
