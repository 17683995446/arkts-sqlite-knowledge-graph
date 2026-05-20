@Component
struct TestComponent1284 {
  @State message: string = "Hello from component 1284"

  aboutToAppear() {
    console.log("Component 1284 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
