@Component
struct TestComponent1940 {
  @State message: string = "Hello from component 1940"

  aboutToAppear() {
    console.log("Component 1940 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
