@Component
struct TestComponent1040 {
  @State message: string = "Hello from component 1040"

  aboutToAppear() {
    console.log("Component 1040 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
