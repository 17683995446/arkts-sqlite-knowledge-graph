@Component
struct TestComponent757 {
  @State message: string = "Hello from component 757"

  aboutToAppear() {
    console.log("Component 757 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
