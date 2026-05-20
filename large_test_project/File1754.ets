@Component
struct TestComponent1754 {
  @State message: string = "Hello from component 1754"

  aboutToAppear() {
    console.log("Component 1754 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
