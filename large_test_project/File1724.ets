@Component
struct TestComponent1724 {
  @State message: string = "Hello from component 1724"

  aboutToAppear() {
    console.log("Component 1724 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
