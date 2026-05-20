@Component
struct TestComponent781 {
  @State message: string = "Hello from component 781"

  aboutToAppear() {
    console.log("Component 781 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
