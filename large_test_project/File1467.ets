@Component
struct TestComponent1467 {
  @State message: string = "Hello from component 1467"

  aboutToAppear() {
    console.log("Component 1467 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
