@Component
struct TestComponent1650 {
  @State message: string = "Hello from component 1650"

  aboutToAppear() {
    console.log("Component 1650 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
