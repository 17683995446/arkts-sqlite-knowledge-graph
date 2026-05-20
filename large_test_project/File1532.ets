@Component
struct TestComponent1532 {
  @State message: string = "Hello from component 1532"

  aboutToAppear() {
    console.log("Component 1532 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
