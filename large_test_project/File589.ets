@Component
struct TestComponent589 {
  @State message: string = "Hello from component 589"

  aboutToAppear() {
    console.log("Component 589 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
