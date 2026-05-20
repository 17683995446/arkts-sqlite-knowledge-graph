@Component
struct TestComponent1363 {
  @State message: string = "Hello from component 1363"

  aboutToAppear() {
    console.log("Component 1363 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
