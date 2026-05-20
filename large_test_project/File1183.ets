@Component
struct TestComponent1183 {
  @State message: string = "Hello from component 1183"

  aboutToAppear() {
    console.log("Component 1183 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
