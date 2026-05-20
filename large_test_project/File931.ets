@Component
struct TestComponent931 {
  @State message: string = "Hello from component 931"

  aboutToAppear() {
    console.log("Component 931 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
