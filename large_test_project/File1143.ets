@Component
struct TestComponent1143 {
  @State message: string = "Hello from component 1143"

  aboutToAppear() {
    console.log("Component 1143 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
