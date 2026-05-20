@Component
struct TestComponent744 {
  @State message: string = "Hello from component 744"

  aboutToAppear() {
    console.log("Component 744 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
