@Component
struct TestComponent1758 {
  @State message: string = "Hello from component 1758"

  aboutToAppear() {
    console.log("Component 1758 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
