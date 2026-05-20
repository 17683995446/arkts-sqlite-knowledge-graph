@Component
struct TestComponent1358 {
  @State message: string = "Hello from component 1358"

  aboutToAppear() {
    console.log("Component 1358 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
