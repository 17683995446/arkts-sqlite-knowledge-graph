@Component
struct TestComponent633 {
  @State message: string = "Hello from component 633"

  aboutToAppear() {
    console.log("Component 633 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
