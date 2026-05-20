@Component
struct TestComponent1099 {
  @State message: string = "Hello from component 1099"

  aboutToAppear() {
    console.log("Component 1099 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
