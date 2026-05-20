@Component
struct TestComponent12 {
  @State message: string = "Hello from component 12"

  aboutToAppear() {
    console.log("Component 12 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
