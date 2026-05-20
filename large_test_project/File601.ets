@Component
struct TestComponent601 {
  @State message: string = "Hello from component 601"

  aboutToAppear() {
    console.log("Component 601 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
