@Component
struct TestComponent1349 {
  @State message: string = "Hello from component 1349"

  aboutToAppear() {
    console.log("Component 1349 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
