@Component
struct TestComponent527 {
  @State message: string = "Hello from component 527"

  aboutToAppear() {
    console.log("Component 527 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
