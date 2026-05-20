@Component
struct TestComponent1482 {
  @State message: string = "Hello from component 1482"

  aboutToAppear() {
    console.log("Component 1482 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
