@Component
struct TestComponent1967 {
  @State message: string = "Hello from component 1967"

  aboutToAppear() {
    console.log("Component 1967 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
