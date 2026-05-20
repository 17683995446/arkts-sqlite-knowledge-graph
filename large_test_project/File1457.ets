@Component
struct TestComponent1457 {
  @State message: string = "Hello from component 1457"

  aboutToAppear() {
    console.log("Component 1457 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
