@Component
struct TestComponent1121 {
  @State message: string = "Hello from component 1121"

  aboutToAppear() {
    console.log("Component 1121 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
