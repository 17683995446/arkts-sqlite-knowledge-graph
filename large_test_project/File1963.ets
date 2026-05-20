@Component
struct TestComponent1963 {
  @State message: string = "Hello from component 1963"

  aboutToAppear() {
    console.log("Component 1963 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
