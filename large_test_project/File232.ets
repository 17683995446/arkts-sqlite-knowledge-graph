@Component
struct TestComponent232 {
  @State message: string = "Hello from component 232"

  aboutToAppear() {
    console.log("Component 232 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
