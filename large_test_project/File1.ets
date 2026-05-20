@Component
struct TestComponent1 {
  @State message: string = "Hello from component 1"

  aboutToAppear() {
    console.log("Component 1 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
