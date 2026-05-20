@Component
struct TestComponent1336 {
  @State message: string = "Hello from component 1336"

  aboutToAppear() {
    console.log("Component 1336 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
