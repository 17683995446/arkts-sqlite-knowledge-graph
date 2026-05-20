@Component
struct TestComponent1247 {
  @State message: string = "Hello from component 1247"

  aboutToAppear() {
    console.log("Component 1247 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
