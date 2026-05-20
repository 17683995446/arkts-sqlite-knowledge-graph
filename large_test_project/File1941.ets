@Component
struct TestComponent1941 {
  @State message: string = "Hello from component 1941"

  aboutToAppear() {
    console.log("Component 1941 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
