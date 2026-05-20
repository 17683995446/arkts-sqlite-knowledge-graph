@Component
struct TestComponent1396 {
  @State message: string = "Hello from component 1396"

  aboutToAppear() {
    console.log("Component 1396 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
