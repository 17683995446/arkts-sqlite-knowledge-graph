@Component
struct TestComponent1973 {
  @State message: string = "Hello from component 1973"

  aboutToAppear() {
    console.log("Component 1973 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
