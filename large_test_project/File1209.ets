@Component
struct TestComponent1209 {
  @State message: string = "Hello from component 1209"

  aboutToAppear() {
    console.log("Component 1209 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
