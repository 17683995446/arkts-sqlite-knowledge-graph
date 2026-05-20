@Component
struct TestComponent1408 {
  @State message: string = "Hello from component 1408"

  aboutToAppear() {
    console.log("Component 1408 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
