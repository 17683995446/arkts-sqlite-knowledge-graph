@Component
struct TestComponent1807 {
  @State message: string = "Hello from component 1807"

  aboutToAppear() {
    console.log("Component 1807 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
