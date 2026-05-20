@Component
struct TestComponent491 {
  @State message: string = "Hello from component 491"

  aboutToAppear() {
    console.log("Component 491 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
