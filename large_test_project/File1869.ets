@Component
struct TestComponent1869 {
  @State message: string = "Hello from component 1869"

  aboutToAppear() {
    console.log("Component 1869 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
