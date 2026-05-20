@Component
struct TestComponent1348 {
  @State message: string = "Hello from component 1348"

  aboutToAppear() {
    console.log("Component 1348 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
