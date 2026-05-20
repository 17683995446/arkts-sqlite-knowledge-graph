@Component
struct TestComponent1769 {
  @State message: string = "Hello from component 1769"

  aboutToAppear() {
    console.log("Component 1769 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
