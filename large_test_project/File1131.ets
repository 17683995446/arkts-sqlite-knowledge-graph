@Component
struct TestComponent1131 {
  @State message: string = "Hello from component 1131"

  aboutToAppear() {
    console.log("Component 1131 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
