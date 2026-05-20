@Component
struct TestComponent1645 {
  @State message: string = "Hello from component 1645"

  aboutToAppear() {
    console.log("Component 1645 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
