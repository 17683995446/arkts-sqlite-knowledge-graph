@Component
struct TestComponent860 {
  @State message: string = "Hello from component 860"

  aboutToAppear() {
    console.log("Component 860 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
