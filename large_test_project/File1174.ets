@Component
struct TestComponent1174 {
  @State message: string = "Hello from component 1174"

  aboutToAppear() {
    console.log("Component 1174 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
