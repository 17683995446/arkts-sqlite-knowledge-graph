@Component
struct TestComponent1166 {
  @State message: string = "Hello from component 1166"

  aboutToAppear() {
    console.log("Component 1166 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
