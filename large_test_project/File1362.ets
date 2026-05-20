@Component
struct TestComponent1362 {
  @State message: string = "Hello from component 1362"

  aboutToAppear() {
    console.log("Component 1362 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
