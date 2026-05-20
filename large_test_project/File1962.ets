@Component
struct TestComponent1962 {
  @State message: string = "Hello from component 1962"

  aboutToAppear() {
    console.log("Component 1962 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
