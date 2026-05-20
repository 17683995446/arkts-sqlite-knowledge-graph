@Component
struct TestComponent1026 {
  @State message: string = "Hello from component 1026"

  aboutToAppear() {
    console.log("Component 1026 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
