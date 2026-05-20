@Component
struct TestComponent1330 {
  @State message: string = "Hello from component 1330"

  aboutToAppear() {
    console.log("Component 1330 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
