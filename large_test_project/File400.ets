@Component
struct TestComponent400 {
  @State message: string = "Hello from component 400"

  aboutToAppear() {
    console.log("Component 400 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
