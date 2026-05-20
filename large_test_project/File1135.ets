@Component
struct TestComponent1135 {
  @State message: string = "Hello from component 1135"

  aboutToAppear() {
    console.log("Component 1135 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
