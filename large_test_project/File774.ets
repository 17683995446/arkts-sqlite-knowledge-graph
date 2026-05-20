@Component
struct TestComponent774 {
  @State message: string = "Hello from component 774"

  aboutToAppear() {
    console.log("Component 774 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
