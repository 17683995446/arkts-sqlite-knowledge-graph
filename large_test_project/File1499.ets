@Component
struct TestComponent1499 {
  @State message: string = "Hello from component 1499"

  aboutToAppear() {
    console.log("Component 1499 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
