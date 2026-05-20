@Component
struct TestComponent176 {
  @State message: string = "Hello from component 176"

  aboutToAppear() {
    console.log("Component 176 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
