@Component
struct TestComponent370 {
  @State message: string = "Hello from component 370"

  aboutToAppear() {
    console.log("Component 370 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
