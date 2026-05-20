@Component
struct TestComponent1279 {
  @State message: string = "Hello from component 1279"

  aboutToAppear() {
    console.log("Component 1279 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
