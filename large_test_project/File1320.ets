@Component
struct TestComponent1320 {
  @State message: string = "Hello from component 1320"

  aboutToAppear() {
    console.log("Component 1320 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
