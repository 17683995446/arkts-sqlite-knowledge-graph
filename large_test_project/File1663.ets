@Component
struct TestComponent1663 {
  @State message: string = "Hello from component 1663"

  aboutToAppear() {
    console.log("Component 1663 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
