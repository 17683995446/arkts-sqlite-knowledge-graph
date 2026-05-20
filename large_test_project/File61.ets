@Component
struct TestComponent61 {
  @State message: string = "Hello from component 61"

  aboutToAppear() {
    console.log("Component 61 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
