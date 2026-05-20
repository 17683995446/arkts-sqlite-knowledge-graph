@Component
struct TestComponent1258 {
  @State message: string = "Hello from component 1258"

  aboutToAppear() {
    console.log("Component 1258 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
