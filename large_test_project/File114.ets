@Component
struct TestComponent114 {
  @State message: string = "Hello from component 114"

  aboutToAppear() {
    console.log("Component 114 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
