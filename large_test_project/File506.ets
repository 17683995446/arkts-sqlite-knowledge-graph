@Component
struct TestComponent506 {
  @State message: string = "Hello from component 506"

  aboutToAppear() {
    console.log("Component 506 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
