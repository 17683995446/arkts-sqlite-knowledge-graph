@Component
struct TestComponent1389 {
  @State message: string = "Hello from component 1389"

  aboutToAppear() {
    console.log("Component 1389 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
