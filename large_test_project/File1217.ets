@Component
struct TestComponent1217 {
  @State message: string = "Hello from component 1217"

  aboutToAppear() {
    console.log("Component 1217 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
