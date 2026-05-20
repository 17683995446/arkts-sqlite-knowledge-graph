@Component
struct TestComponent726 {
  @State message: string = "Hello from component 726"

  aboutToAppear() {
    console.log("Component 726 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
