@Component
struct TestComponent581 {
  @State message: string = "Hello from component 581"

  aboutToAppear() {
    console.log("Component 581 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
