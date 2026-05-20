@Component
struct TestComponent101 {
  @State message: string = "Hello from component 101"

  aboutToAppear() {
    console.log("Component 101 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
