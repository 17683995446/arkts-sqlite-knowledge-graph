@Component
struct TestComponent127 {
  @State message: string = "Hello from component 127"

  aboutToAppear() {
    console.log("Component 127 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
