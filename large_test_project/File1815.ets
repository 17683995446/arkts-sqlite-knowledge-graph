@Component
struct TestComponent1815 {
  @State message: string = "Hello from component 1815"

  aboutToAppear() {
    console.log("Component 1815 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
