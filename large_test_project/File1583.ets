@Component
struct TestComponent1583 {
  @State message: string = "Hello from component 1583"

  aboutToAppear() {
    console.log("Component 1583 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
