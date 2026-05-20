@Component
struct TestComponent1636 {
  @State message: string = "Hello from component 1636"

  aboutToAppear() {
    console.log("Component 1636 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
