@Component
struct TestComponent1184 {
  @State message: string = "Hello from component 1184"

  aboutToAppear() {
    console.log("Component 1184 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
