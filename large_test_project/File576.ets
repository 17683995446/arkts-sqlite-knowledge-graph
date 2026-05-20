@Component
struct TestComponent576 {
  @State message: string = "Hello from component 576"

  aboutToAppear() {
    console.log("Component 576 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
