@Component
struct TestComponent1057 {
  @State message: string = "Hello from component 1057"

  aboutToAppear() {
    console.log("Component 1057 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
