@Component
struct TestComponent1275 {
  @State message: string = "Hello from component 1275"

  aboutToAppear() {
    console.log("Component 1275 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
