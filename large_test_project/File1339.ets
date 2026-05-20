@Component
struct TestComponent1339 {
  @State message: string = "Hello from component 1339"

  aboutToAppear() {
    console.log("Component 1339 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
