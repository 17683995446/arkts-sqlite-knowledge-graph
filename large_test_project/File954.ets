@Component
struct TestComponent954 {
  @State message: string = "Hello from component 954"

  aboutToAppear() {
    console.log("Component 954 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
