@Component
struct TestComponent1920 {
  @State message: string = "Hello from component 1920"

  aboutToAppear() {
    console.log("Component 1920 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
