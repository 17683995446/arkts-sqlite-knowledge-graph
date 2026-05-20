@Component
struct TestComponent784 {
  @State message: string = "Hello from component 784"

  aboutToAppear() {
    console.log("Component 784 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
