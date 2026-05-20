@Component
struct TestComponent1260 {
  @State message: string = "Hello from component 1260"

  aboutToAppear() {
    console.log("Component 1260 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
