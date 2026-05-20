@Component
struct TestComponent823 {
  @State message: string = "Hello from component 823"

  aboutToAppear() {
    console.log("Component 823 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
