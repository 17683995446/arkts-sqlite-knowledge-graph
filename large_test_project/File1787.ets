@Component
struct TestComponent1787 {
  @State message: string = "Hello from component 1787"

  aboutToAppear() {
    console.log("Component 1787 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
