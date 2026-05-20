@Component
struct TestComponent791 {
  @State message: string = "Hello from component 791"

  aboutToAppear() {
    console.log("Component 791 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
