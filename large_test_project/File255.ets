@Component
struct TestComponent255 {
  @State message: string = "Hello from component 255"

  aboutToAppear() {
    console.log("Component 255 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
