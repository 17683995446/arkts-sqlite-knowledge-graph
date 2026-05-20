@Component
struct TestComponent1425 {
  @State message: string = "Hello from component 1425"

  aboutToAppear() {
    console.log("Component 1425 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
