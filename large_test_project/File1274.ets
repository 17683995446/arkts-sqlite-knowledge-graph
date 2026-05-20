@Component
struct TestComponent1274 {
  @State message: string = "Hello from component 1274"

  aboutToAppear() {
    console.log("Component 1274 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
