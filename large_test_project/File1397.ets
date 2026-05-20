@Component
struct TestComponent1397 {
  @State message: string = "Hello from component 1397"

  aboutToAppear() {
    console.log("Component 1397 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
