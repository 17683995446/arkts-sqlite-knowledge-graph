@Component
struct TestComponent1616 {
  @State message: string = "Hello from component 1616"

  aboutToAppear() {
    console.log("Component 1616 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
