@Component
struct TestComponent1906 {
  @State message: string = "Hello from component 1906"

  aboutToAppear() {
    console.log("Component 1906 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
