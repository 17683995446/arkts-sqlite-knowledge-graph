@Component
struct TestComponent538 {
  @State message: string = "Hello from component 538"

  aboutToAppear() {
    console.log("Component 538 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
