@Component
struct TestComponent1385 {
  @State message: string = "Hello from component 1385"

  aboutToAppear() {
    console.log("Component 1385 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
