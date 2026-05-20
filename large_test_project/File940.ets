@Component
struct TestComponent940 {
  @State message: string = "Hello from component 940"

  aboutToAppear() {
    console.log("Component 940 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
