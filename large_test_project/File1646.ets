@Component
struct TestComponent1646 {
  @State message: string = "Hello from component 1646"

  aboutToAppear() {
    console.log("Component 1646 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
