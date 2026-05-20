@Component
struct TestComponent1982 {
  @State message: string = "Hello from component 1982"

  aboutToAppear() {
    console.log("Component 1982 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
