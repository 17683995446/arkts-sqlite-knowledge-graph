@Component
struct TestComponent297 {
  @State message: string = "Hello from component 297"

  aboutToAppear() {
    console.log("Component 297 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
