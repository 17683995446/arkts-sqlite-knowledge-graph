@Component
struct TestComponent628 {
  @State message: string = "Hello from component 628"

  aboutToAppear() {
    console.log("Component 628 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
