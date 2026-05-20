@Component
struct TestComponent1354 {
  @State message: string = "Hello from component 1354"

  aboutToAppear() {
    console.log("Component 1354 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
