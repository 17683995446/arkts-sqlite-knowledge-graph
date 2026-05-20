@Component
struct TestComponent1050 {
  @State message: string = "Hello from component 1050"

  aboutToAppear() {
    console.log("Component 1050 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
