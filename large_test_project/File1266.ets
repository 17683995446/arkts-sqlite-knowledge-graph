@Component
struct TestComponent1266 {
  @State message: string = "Hello from component 1266"

  aboutToAppear() {
    console.log("Component 1266 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
