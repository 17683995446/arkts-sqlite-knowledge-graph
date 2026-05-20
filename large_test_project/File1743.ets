@Component
struct TestComponent1743 {
  @State message: string = "Hello from component 1743"

  aboutToAppear() {
    console.log("Component 1743 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
