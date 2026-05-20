@Component
struct TestComponent849 {
  @State message: string = "Hello from component 849"

  aboutToAppear() {
    console.log("Component 849 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
