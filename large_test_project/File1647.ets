@Component
struct TestComponent1647 {
  @State message: string = "Hello from component 1647"

  aboutToAppear() {
    console.log("Component 1647 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
