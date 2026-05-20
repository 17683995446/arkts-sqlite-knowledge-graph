@Component
struct TestComponent407 {
  @State message: string = "Hello from component 407"

  aboutToAppear() {
    console.log("Component 407 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
