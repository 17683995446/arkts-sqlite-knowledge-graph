@Component
struct TestComponent582 {
  @State message: string = "Hello from component 582"

  aboutToAppear() {
    console.log("Component 582 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
