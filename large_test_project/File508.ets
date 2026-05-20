@Component
struct TestComponent508 {
  @State message: string = "Hello from component 508"

  aboutToAppear() {
    console.log("Component 508 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
