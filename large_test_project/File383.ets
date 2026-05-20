@Component
struct TestComponent383 {
  @State message: string = "Hello from component 383"

  aboutToAppear() {
    console.log("Component 383 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
