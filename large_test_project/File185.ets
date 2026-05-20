@Component
struct TestComponent185 {
  @State message: string = "Hello from component 185"

  aboutToAppear() {
    console.log("Component 185 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
