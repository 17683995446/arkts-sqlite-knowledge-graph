@Component
struct TestComponent883 {
  @State message: string = "Hello from component 883"

  aboutToAppear() {
    console.log("Component 883 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
