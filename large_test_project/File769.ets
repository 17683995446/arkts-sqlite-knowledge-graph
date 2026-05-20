@Component
struct TestComponent769 {
  @State message: string = "Hello from component 769"

  aboutToAppear() {
    console.log("Component 769 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
