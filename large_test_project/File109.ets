@Component
struct TestComponent109 {
  @State message: string = "Hello from component 109"

  aboutToAppear() {
    console.log("Component 109 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
