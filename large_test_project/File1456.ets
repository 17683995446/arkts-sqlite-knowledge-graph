@Component
struct TestComponent1456 {
  @State message: string = "Hello from component 1456"

  aboutToAppear() {
    console.log("Component 1456 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
