@Component
struct TestComponent1759 {
  @State message: string = "Hello from component 1759"

  aboutToAppear() {
    console.log("Component 1759 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
