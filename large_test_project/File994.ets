@Component
struct TestComponent994 {
  @State message: string = "Hello from component 994"

  aboutToAppear() {
    console.log("Component 994 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
