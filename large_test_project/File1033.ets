@Component
struct TestComponent1033 {
  @State message: string = "Hello from component 1033"

  aboutToAppear() {
    console.log("Component 1033 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
