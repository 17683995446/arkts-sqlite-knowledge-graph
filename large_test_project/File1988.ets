@Component
struct TestComponent1988 {
  @State message: string = "Hello from component 1988"

  aboutToAppear() {
    console.log("Component 1988 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
