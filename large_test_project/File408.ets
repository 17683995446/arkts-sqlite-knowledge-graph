@Component
struct TestComponent408 {
  @State message: string = "Hello from component 408"

  aboutToAppear() {
    console.log("Component 408 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
