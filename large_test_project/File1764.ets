@Component
struct TestComponent1764 {
  @State message: string = "Hello from component 1764"

  aboutToAppear() {
    console.log("Component 1764 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
