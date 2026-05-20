@Component
struct TestComponent1720 {
  @State message: string = "Hello from component 1720"

  aboutToAppear() {
    console.log("Component 1720 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
