@Component
struct TestComponent177 {
  @State message: string = "Hello from component 177"

  aboutToAppear() {
    console.log("Component 177 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
