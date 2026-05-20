@Component
struct TestComponent1019 {
  @State message: string = "Hello from component 1019"

  aboutToAppear() {
    console.log("Component 1019 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
