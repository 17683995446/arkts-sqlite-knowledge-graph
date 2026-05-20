@Component
struct TestComponent1204 {
  @State message: string = "Hello from component 1204"

  aboutToAppear() {
    console.log("Component 1204 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
