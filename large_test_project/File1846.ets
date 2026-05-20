@Component
struct TestComponent1846 {
  @State message: string = "Hello from component 1846"

  aboutToAppear() {
    console.log("Component 1846 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
