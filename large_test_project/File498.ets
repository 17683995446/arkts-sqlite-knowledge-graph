@Component
struct TestComponent498 {
  @State message: string = "Hello from component 498"

  aboutToAppear() {
    console.log("Component 498 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
