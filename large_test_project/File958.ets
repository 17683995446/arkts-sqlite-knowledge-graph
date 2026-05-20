@Component
struct TestComponent958 {
  @State message: string = "Hello from component 958"

  aboutToAppear() {
    console.log("Component 958 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
