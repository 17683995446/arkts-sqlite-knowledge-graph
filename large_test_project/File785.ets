@Component
struct TestComponent785 {
  @State message: string = "Hello from component 785"

  aboutToAppear() {
    console.log("Component 785 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
