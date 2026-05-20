@Component
struct TestComponent397 {
  @State message: string = "Hello from component 397"

  aboutToAppear() {
    console.log("Component 397 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
