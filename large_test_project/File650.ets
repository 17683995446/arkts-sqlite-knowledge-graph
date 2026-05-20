@Component
struct TestComponent650 {
  @State message: string = "Hello from component 650"

  aboutToAppear() {
    console.log("Component 650 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
