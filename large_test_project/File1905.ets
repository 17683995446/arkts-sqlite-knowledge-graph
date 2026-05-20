@Component
struct TestComponent1905 {
  @State message: string = "Hello from component 1905"

  aboutToAppear() {
    console.log("Component 1905 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
