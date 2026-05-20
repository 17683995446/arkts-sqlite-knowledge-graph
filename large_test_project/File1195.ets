@Component
struct TestComponent1195 {
  @State message: string = "Hello from component 1195"

  aboutToAppear() {
    console.log("Component 1195 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
