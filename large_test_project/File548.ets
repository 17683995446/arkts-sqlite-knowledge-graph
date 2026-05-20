@Component
struct TestComponent548 {
  @State message: string = "Hello from component 548"

  aboutToAppear() {
    console.log("Component 548 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
