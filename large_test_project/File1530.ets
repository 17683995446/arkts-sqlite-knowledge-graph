@Component
struct TestComponent1530 {
  @State message: string = "Hello from component 1530"

  aboutToAppear() {
    console.log("Component 1530 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
