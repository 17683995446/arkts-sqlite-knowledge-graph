@Component
struct TestComponent536 {
  @State message: string = "Hello from component 536"

  aboutToAppear() {
    console.log("Component 536 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
