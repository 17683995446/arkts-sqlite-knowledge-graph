@Component
struct TestComponent412 {
  @State message: string = "Hello from component 412"

  aboutToAppear() {
    console.log("Component 412 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
