@Component
struct TestComponent1891 {
  @State message: string = "Hello from component 1891"

  aboutToAppear() {
    console.log("Component 1891 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
