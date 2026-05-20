@Component
struct TestComponent1329 {
  @State message: string = "Hello from component 1329"

  aboutToAppear() {
    console.log("Component 1329 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
