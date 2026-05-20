@Component
struct TestComponent1000 {
  @State message: string = "Hello from component 1000"

  aboutToAppear() {
    console.log("Component 1000 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
