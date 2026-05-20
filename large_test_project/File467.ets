@Component
struct TestComponent467 {
  @State message: string = "Hello from component 467"

  aboutToAppear() {
    console.log("Component 467 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
