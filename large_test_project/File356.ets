@Component
struct TestComponent356 {
  @State message: string = "Hello from component 356"

  aboutToAppear() {
    console.log("Component 356 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
