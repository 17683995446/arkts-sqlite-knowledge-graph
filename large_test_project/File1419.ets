@Component
struct TestComponent1419 {
  @State message: string = "Hello from component 1419"

  aboutToAppear() {
    console.log("Component 1419 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
