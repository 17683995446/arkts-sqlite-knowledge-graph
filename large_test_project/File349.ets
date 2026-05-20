@Component
struct TestComponent349 {
  @State message: string = "Hello from component 349"

  aboutToAppear() {
    console.log("Component 349 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
