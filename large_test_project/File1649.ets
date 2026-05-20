@Component
struct TestComponent1649 {
  @State message: string = "Hello from component 1649"

  aboutToAppear() {
    console.log("Component 1649 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
