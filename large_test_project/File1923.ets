@Component
struct TestComponent1923 {
  @State message: string = "Hello from component 1923"

  aboutToAppear() {
    console.log("Component 1923 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
