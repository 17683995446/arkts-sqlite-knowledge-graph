@Component
struct TestComponent1707 {
  @State message: string = "Hello from component 1707"

  aboutToAppear() {
    console.log("Component 1707 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
