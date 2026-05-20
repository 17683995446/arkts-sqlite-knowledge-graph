@Component
struct TestComponent1624 {
  @State message: string = "Hello from component 1624"

  aboutToAppear() {
    console.log("Component 1624 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
