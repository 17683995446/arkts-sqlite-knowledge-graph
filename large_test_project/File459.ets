@Component
struct TestComponent459 {
  @State message: string = "Hello from component 459"

  aboutToAppear() {
    console.log("Component 459 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
