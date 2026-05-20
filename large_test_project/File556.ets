@Component
struct TestComponent556 {
  @State message: string = "Hello from component 556"

  aboutToAppear() {
    console.log("Component 556 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
