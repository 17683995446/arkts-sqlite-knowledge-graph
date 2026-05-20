@Component
struct TestComponent974 {
  @State message: string = "Hello from component 974"

  aboutToAppear() {
    console.log("Component 974 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
