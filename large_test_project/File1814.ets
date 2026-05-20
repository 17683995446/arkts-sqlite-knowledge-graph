@Component
struct TestComponent1814 {
  @State message: string = "Hello from component 1814"

  aboutToAppear() {
    console.log("Component 1814 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
