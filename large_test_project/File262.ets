@Component
struct TestComponent262 {
  @State message: string = "Hello from component 262"

  aboutToAppear() {
    console.log("Component 262 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
