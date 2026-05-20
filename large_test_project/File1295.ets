@Component
struct TestComponent1295 {
  @State message: string = "Hello from component 1295"

  aboutToAppear() {
    console.log("Component 1295 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
