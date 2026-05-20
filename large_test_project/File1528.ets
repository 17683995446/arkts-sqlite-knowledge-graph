@Component
struct TestComponent1528 {
  @State message: string = "Hello from component 1528"

  aboutToAppear() {
    console.log("Component 1528 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
