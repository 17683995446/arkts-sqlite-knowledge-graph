@Component
struct TestComponent646 {
  @State message: string = "Hello from component 646"

  aboutToAppear() {
    console.log("Component 646 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
