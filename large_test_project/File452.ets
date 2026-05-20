@Component
struct TestComponent452 {
  @State message: string = "Hello from component 452"

  aboutToAppear() {
    console.log("Component 452 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
