@Component
struct TestComponent1343 {
  @State message: string = "Hello from component 1343"

  aboutToAppear() {
    console.log("Component 1343 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
