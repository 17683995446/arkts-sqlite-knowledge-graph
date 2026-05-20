@Component
struct TestComponent1311 {
  @State message: string = "Hello from component 1311"

  aboutToAppear() {
    console.log("Component 1311 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
