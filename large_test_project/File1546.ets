@Component
struct TestComponent1546 {
  @State message: string = "Hello from component 1546"

  aboutToAppear() {
    console.log("Component 1546 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
