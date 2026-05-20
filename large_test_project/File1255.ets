@Component
struct TestComponent1255 {
  @State message: string = "Hello from component 1255"

  aboutToAppear() {
    console.log("Component 1255 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
