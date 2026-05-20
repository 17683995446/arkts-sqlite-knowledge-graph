@Component
struct TestComponent90 {
  @State message: string = "Hello from component 90"

  aboutToAppear() {
    console.log("Component 90 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
