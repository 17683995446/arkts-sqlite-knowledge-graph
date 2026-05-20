@Component
struct TestComponent534 {
  @State message: string = "Hello from component 534"

  aboutToAppear() {
    console.log("Component 534 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
