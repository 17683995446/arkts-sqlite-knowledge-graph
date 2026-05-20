@Component
struct TestComponent1283 {
  @State message: string = "Hello from component 1283"

  aboutToAppear() {
    console.log("Component 1283 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
