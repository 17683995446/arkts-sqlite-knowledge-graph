@Component
struct TestComponent544 {
  @State message: string = "Hello from component 544"

  aboutToAppear() {
    console.log("Component 544 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
