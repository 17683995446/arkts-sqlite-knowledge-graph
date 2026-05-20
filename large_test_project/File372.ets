@Component
struct TestComponent372 {
  @State message: string = "Hello from component 372"

  aboutToAppear() {
    console.log("Component 372 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
