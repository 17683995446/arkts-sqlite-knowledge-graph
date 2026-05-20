@Component
struct TestComponent1617 {
  @State message: string = "Hello from component 1617"

  aboutToAppear() {
    console.log("Component 1617 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
