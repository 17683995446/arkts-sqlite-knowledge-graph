@Component
struct TestComponent1305 {
  @State message: string = "Hello from component 1305"

  aboutToAppear() {
    console.log("Component 1305 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
