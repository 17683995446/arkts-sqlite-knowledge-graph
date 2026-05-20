@Component
struct TestComponent1325 {
  @State message: string = "Hello from component 1325"

  aboutToAppear() {
    console.log("Component 1325 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
