@Component
struct TestComponent1304 {
  @State message: string = "Hello from component 1304"

  aboutToAppear() {
    console.log("Component 1304 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
