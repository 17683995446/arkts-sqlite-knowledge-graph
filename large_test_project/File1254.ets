@Component
struct TestComponent1254 {
  @State message: string = "Hello from component 1254"

  aboutToAppear() {
    console.log("Component 1254 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
