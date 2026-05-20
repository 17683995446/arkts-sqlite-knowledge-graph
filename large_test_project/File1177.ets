@Component
struct TestComponent1177 {
  @State message: string = "Hello from component 1177"

  aboutToAppear() {
    console.log("Component 1177 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
