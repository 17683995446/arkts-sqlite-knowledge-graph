@Component
struct TestComponent1548 {
  @State message: string = "Hello from component 1548"

  aboutToAppear() {
    console.log("Component 1548 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
