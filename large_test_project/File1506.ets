@Component
struct TestComponent1506 {
  @State message: string = "Hello from component 1506"

  aboutToAppear() {
    console.log("Component 1506 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
