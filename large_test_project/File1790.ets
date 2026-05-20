@Component
struct TestComponent1790 {
  @State message: string = "Hello from component 1790"

  aboutToAppear() {
    console.log("Component 1790 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
