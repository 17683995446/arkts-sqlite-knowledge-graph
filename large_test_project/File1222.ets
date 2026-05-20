@Component
struct TestComponent1222 {
  @State message: string = "Hello from component 1222"

  aboutToAppear() {
    console.log("Component 1222 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
