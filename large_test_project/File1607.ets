@Component
struct TestComponent1607 {
  @State message: string = "Hello from component 1607"

  aboutToAppear() {
    console.log("Component 1607 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
