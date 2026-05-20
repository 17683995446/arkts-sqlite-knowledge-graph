@Component
struct TestComponent1276 {
  @State message: string = "Hello from component 1276"

  aboutToAppear() {
    console.log("Component 1276 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
