@Component
struct TestComponent1441 {
  @State message: string = "Hello from component 1441"

  aboutToAppear() {
    console.log("Component 1441 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
