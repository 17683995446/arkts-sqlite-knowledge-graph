@Component
struct TestComponent481 {
  @State message: string = "Hello from component 481"

  aboutToAppear() {
    console.log("Component 481 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
