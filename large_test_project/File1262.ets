@Component
struct TestComponent1262 {
  @State message: string = "Hello from component 1262"

  aboutToAppear() {
    console.log("Component 1262 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
