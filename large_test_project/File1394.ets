@Component
struct TestComponent1394 {
  @State message: string = "Hello from component 1394"

  aboutToAppear() {
    console.log("Component 1394 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
