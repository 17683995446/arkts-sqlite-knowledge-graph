@Component
struct TestComponent1573 {
  @State message: string = "Hello from component 1573"

  aboutToAppear() {
    console.log("Component 1573 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
