@Component
struct TestComponent493 {
  @State message: string = "Hello from component 493"

  aboutToAppear() {
    console.log("Component 493 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
