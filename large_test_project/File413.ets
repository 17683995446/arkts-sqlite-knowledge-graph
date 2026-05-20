@Component
struct TestComponent413 {
  @State message: string = "Hello from component 413"

  aboutToAppear() {
    console.log("Component 413 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
