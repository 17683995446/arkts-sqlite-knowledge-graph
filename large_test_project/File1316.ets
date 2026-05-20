@Component
struct TestComponent1316 {
  @State message: string = "Hello from component 1316"

  aboutToAppear() {
    console.log("Component 1316 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
