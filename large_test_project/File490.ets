@Component
struct TestComponent490 {
  @State message: string = "Hello from component 490"

  aboutToAppear() {
    console.log("Component 490 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
