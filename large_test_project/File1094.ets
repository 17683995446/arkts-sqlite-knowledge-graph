@Component
struct TestComponent1094 {
  @State message: string = "Hello from component 1094"

  aboutToAppear() {
    console.log("Component 1094 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
