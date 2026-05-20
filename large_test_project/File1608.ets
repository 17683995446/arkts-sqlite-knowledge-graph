@Component
struct TestComponent1608 {
  @State message: string = "Hello from component 1608"

  aboutToAppear() {
    console.log("Component 1608 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
