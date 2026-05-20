@Component
struct TestComponent1226 {
  @State message: string = "Hello from component 1226"

  aboutToAppear() {
    console.log("Component 1226 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
