@Component
struct TestComponent705 {
  @State message: string = "Hello from component 705"

  aboutToAppear() {
    console.log("Component 705 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
