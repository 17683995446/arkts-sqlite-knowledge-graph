@Component
struct TestComponent1987 {
  @State message: string = "Hello from component 1987"

  aboutToAppear() {
    console.log("Component 1987 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
