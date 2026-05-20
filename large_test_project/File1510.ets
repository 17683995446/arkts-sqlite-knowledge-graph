@Component
struct TestComponent1510 {
  @State message: string = "Hello from component 1510"

  aboutToAppear() {
    console.log("Component 1510 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
