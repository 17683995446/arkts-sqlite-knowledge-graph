@Component
struct TestComponent1092 {
  @State message: string = "Hello from component 1092"

  aboutToAppear() {
    console.log("Component 1092 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
