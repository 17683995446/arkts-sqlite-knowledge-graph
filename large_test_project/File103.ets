@Component
struct TestComponent103 {
  @State message: string = "Hello from component 103"

  aboutToAppear() {
    console.log("Component 103 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
