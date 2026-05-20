@Component
struct TestComponent355 {
  @State message: string = "Hello from component 355"

  aboutToAppear() {
    console.log("Component 355 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
