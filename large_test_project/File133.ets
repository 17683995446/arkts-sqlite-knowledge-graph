@Component
struct TestComponent133 {
  @State message: string = "Hello from component 133"

  aboutToAppear() {
    console.log("Component 133 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
