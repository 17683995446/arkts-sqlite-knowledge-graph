@Component
struct TestComponent1971 {
  @State message: string = "Hello from component 1971"

  aboutToAppear() {
    console.log("Component 1971 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
