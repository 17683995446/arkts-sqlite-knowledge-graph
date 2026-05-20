@Component
struct TestComponent1432 {
  @State message: string = "Hello from component 1432"

  aboutToAppear() {
    console.log("Component 1432 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
