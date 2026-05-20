@Component
struct TestComponent346 {
  @State message: string = "Hello from component 346"

  aboutToAppear() {
    console.log("Component 346 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
