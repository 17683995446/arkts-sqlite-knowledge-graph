@Component
struct TestComponent1829 {
  @State message: string = "Hello from component 1829"

  aboutToAppear() {
    console.log("Component 1829 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
