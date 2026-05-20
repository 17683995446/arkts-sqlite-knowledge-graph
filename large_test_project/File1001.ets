@Component
struct TestComponent1001 {
  @State message: string = "Hello from component 1001"

  aboutToAppear() {
    console.log("Component 1001 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
