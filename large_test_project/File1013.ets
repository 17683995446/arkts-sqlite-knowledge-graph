@Component
struct TestComponent1013 {
  @State message: string = "Hello from component 1013"

  aboutToAppear() {
    console.log("Component 1013 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
