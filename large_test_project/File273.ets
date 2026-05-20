@Component
struct TestComponent273 {
  @State message: string = "Hello from component 273"

  aboutToAppear() {
    console.log("Component 273 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
