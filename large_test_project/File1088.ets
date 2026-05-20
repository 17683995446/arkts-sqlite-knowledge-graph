@Component
struct TestComponent1088 {
  @State message: string = "Hello from component 1088"

  aboutToAppear() {
    console.log("Component 1088 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
