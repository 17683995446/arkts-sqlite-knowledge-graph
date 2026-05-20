@Component
struct TestComponent1451 {
  @State message: string = "Hello from component 1451"

  aboutToAppear() {
    console.log("Component 1451 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
