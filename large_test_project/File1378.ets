@Component
struct TestComponent1378 {
  @State message: string = "Hello from component 1378"

  aboutToAppear() {
    console.log("Component 1378 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
