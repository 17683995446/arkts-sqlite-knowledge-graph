@Component
struct TestComponent1834 {
  @State message: string = "Hello from component 1834"

  aboutToAppear() {
    console.log("Component 1834 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
