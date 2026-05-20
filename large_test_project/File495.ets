@Component
struct TestComponent495 {
  @State message: string = "Hello from component 495"

  aboutToAppear() {
    console.log("Component 495 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
