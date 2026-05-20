@Component
struct TestComponent525 {
  @State message: string = "Hello from component 525"

  aboutToAppear() {
    console.log("Component 525 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
