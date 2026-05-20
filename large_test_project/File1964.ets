@Component
struct TestComponent1964 {
  @State message: string = "Hello from component 1964"

  aboutToAppear() {
    console.log("Component 1964 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
