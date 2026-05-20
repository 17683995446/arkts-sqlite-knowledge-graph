@Component
struct TestComponent1277 {
  @State message: string = "Hello from component 1277"

  aboutToAppear() {
    console.log("Component 1277 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
