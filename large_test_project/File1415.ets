@Component
struct TestComponent1415 {
  @State message: string = "Hello from component 1415"

  aboutToAppear() {
    console.log("Component 1415 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
