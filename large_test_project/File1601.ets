@Component
struct TestComponent1601 {
  @State message: string = "Hello from component 1601"

  aboutToAppear() {
    console.log("Component 1601 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
