@Component
struct TestComponent1252 {
  @State message: string = "Hello from component 1252"

  aboutToAppear() {
    console.log("Component 1252 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
