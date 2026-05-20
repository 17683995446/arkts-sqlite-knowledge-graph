@Component
struct TestComponent1006 {
  @State message: string = "Hello from component 1006"

  aboutToAppear() {
    console.log("Component 1006 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
