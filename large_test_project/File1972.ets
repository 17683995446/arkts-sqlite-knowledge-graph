@Component
struct TestComponent1972 {
  @State message: string = "Hello from component 1972"

  aboutToAppear() {
    console.log("Component 1972 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
