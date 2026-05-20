@Component
struct TestComponent153 {
  @State message: string = "Hello from component 153"

  aboutToAppear() {
    console.log("Component 153 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
