@Component
struct TestComponent1956 {
  @State message: string = "Hello from component 1956"

  aboutToAppear() {
    console.log("Component 1956 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
