@Component
struct TestComponent1705 {
  @State message: string = "Hello from component 1705"

  aboutToAppear() {
    console.log("Component 1705 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
