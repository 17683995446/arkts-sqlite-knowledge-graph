@Component
struct TestComponent1957 {
  @State message: string = "Hello from component 1957"

  aboutToAppear() {
    console.log("Component 1957 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
