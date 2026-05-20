@Component
struct TestComponent126 {
  @State message: string = "Hello from component 126"

  aboutToAppear() {
    console.log("Component 126 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
