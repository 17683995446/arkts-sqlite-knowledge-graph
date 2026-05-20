@Component
struct TestComponent963 {
  @State message: string = "Hello from component 963"

  aboutToAppear() {
    console.log("Component 963 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
