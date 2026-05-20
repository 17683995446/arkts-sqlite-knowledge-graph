@Component
struct TestComponent1399 {
  @State message: string = "Hello from component 1399"

  aboutToAppear() {
    console.log("Component 1399 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
