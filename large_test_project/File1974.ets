@Component
struct TestComponent1974 {
  @State message: string = "Hello from component 1974"

  aboutToAppear() {
    console.log("Component 1974 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
