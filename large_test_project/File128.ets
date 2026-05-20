@Component
struct TestComponent128 {
  @State message: string = "Hello from component 128"

  aboutToAppear() {
    console.log("Component 128 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
