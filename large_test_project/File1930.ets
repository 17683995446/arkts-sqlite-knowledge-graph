@Component
struct TestComponent1930 {
  @State message: string = "Hello from component 1930"

  aboutToAppear() {
    console.log("Component 1930 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
