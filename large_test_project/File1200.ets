@Component
struct TestComponent1200 {
  @State message: string = "Hello from component 1200"

  aboutToAppear() {
    console.log("Component 1200 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
