@Component
struct TestComponent1946 {
  @State message: string = "Hello from component 1946"

  aboutToAppear() {
    console.log("Component 1946 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
