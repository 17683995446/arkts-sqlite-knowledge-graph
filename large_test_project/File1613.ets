@Component
struct TestComponent1613 {
  @State message: string = "Hello from component 1613"

  aboutToAppear() {
    console.log("Component 1613 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
