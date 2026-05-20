@Component
struct TestComponent665 {
  @State message: string = "Hello from component 665"

  aboutToAppear() {
    console.log("Component 665 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
