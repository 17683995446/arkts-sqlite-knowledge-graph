@Component
struct TestComponent1792 {
  @State message: string = "Hello from component 1792"

  aboutToAppear() {
    console.log("Component 1792 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
