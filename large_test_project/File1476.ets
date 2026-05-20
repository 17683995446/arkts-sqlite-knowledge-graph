@Component
struct TestComponent1476 {
  @State message: string = "Hello from component 1476"

  aboutToAppear() {
    console.log("Component 1476 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
