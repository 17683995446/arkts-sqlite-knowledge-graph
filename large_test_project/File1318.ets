@Component
struct TestComponent1318 {
  @State message: string = "Hello from component 1318"

  aboutToAppear() {
    console.log("Component 1318 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
