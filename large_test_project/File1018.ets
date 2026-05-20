@Component
struct TestComponent1018 {
  @State message: string = "Hello from component 1018"

  aboutToAppear() {
    console.log("Component 1018 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
