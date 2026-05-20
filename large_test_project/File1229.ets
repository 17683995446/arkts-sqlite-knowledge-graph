@Component
struct TestComponent1229 {
  @State message: string = "Hello from component 1229"

  aboutToAppear() {
    console.log("Component 1229 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
