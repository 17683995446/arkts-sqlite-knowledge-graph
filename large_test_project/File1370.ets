@Component
struct TestComponent1370 {
  @State message: string = "Hello from component 1370"

  aboutToAppear() {
    console.log("Component 1370 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
