@Component
struct TestComponent1656 {
  @State message: string = "Hello from component 1656"

  aboutToAppear() {
    console.log("Component 1656 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
