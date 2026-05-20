@Component
struct TestComponent1286 {
  @State message: string = "Hello from component 1286"

  aboutToAppear() {
    console.log("Component 1286 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
