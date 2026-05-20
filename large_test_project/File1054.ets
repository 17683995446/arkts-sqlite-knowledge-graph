@Component
struct TestComponent1054 {
  @State message: string = "Hello from component 1054"

  aboutToAppear() {
    console.log("Component 1054 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
