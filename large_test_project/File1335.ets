@Component
struct TestComponent1335 {
  @State message: string = "Hello from component 1335"

  aboutToAppear() {
    console.log("Component 1335 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
