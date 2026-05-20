@Component
struct TestComponent276 {
  @State message: string = "Hello from component 276"

  aboutToAppear() {
    console.log("Component 276 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
