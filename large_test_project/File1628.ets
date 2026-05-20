@Component
struct TestComponent1628 {
  @State message: string = "Hello from component 1628"

  aboutToAppear() {
    console.log("Component 1628 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
