@Component
struct TestComponent918 {
  @State message: string = "Hello from component 918"

  aboutToAppear() {
    console.log("Component 918 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
