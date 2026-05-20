@Component
struct TestComponent1391 {
  @State message: string = "Hello from component 1391"

  aboutToAppear() {
    console.log("Component 1391 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
