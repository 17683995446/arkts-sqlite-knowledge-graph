@Component
struct TestComponent124 {
  @State message: string = "Hello from component 124"

  aboutToAppear() {
    console.log("Component 124 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
