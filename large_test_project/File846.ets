@Component
struct TestComponent846 {
  @State message: string = "Hello from component 846"

  aboutToAppear() {
    console.log("Component 846 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
