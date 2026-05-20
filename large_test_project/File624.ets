@Component
struct TestComponent624 {
  @State message: string = "Hello from component 624"

  aboutToAppear() {
    console.log("Component 624 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
