@Component
struct TestComponent1374 {
  @State message: string = "Hello from component 1374"

  aboutToAppear() {
    console.log("Component 1374 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
