@Component
struct TestComponent1462 {
  @State message: string = "Hello from component 1462"

  aboutToAppear() {
    console.log("Component 1462 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
