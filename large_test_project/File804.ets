@Component
struct TestComponent804 {
  @State message: string = "Hello from component 804"

  aboutToAppear() {
    console.log("Component 804 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
