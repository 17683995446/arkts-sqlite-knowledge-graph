@Component
struct TestComponent1555 {
  @State message: string = "Hello from component 1555"

  aboutToAppear() {
    console.log("Component 1555 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
