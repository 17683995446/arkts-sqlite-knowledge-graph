@Component
struct TestComponent158 {
  @State message: string = "Hello from component 158"

  aboutToAppear() {
    console.log("Component 158 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
