@Component
struct TestComponent983 {
  @State message: string = "Hello from component 983"

  aboutToAppear() {
    console.log("Component 983 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
