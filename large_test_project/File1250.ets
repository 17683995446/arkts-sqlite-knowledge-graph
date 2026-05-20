@Component
struct TestComponent1250 {
  @State message: string = "Hello from component 1250"

  aboutToAppear() {
    console.log("Component 1250 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
