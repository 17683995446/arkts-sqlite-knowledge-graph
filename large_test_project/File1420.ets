@Component
struct TestComponent1420 {
  @State message: string = "Hello from component 1420"

  aboutToAppear() {
    console.log("Component 1420 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
