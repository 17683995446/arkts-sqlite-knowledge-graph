@Component
struct TestComponent497 {
  @State message: string = "Hello from component 497"

  aboutToAppear() {
    console.log("Component 497 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
