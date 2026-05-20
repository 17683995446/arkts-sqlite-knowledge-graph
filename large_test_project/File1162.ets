@Component
struct TestComponent1162 {
  @State message: string = "Hello from component 1162"

  aboutToAppear() {
    console.log("Component 1162 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
