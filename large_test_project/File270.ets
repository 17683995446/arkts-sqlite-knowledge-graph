@Component
struct TestComponent270 {
  @State message: string = "Hello from component 270"

  aboutToAppear() {
    console.log("Component 270 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
