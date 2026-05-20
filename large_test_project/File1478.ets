@Component
struct TestComponent1478 {
  @State message: string = "Hello from component 1478"

  aboutToAppear() {
    console.log("Component 1478 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
