@Component
struct TestComponent1473 {
  @State message: string = "Hello from component 1473"

  aboutToAppear() {
    console.log("Component 1473 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
