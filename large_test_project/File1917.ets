@Component
struct TestComponent1917 {
  @State message: string = "Hello from component 1917"

  aboutToAppear() {
    console.log("Component 1917 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
