@Component
struct TestComponent583 {
  @State message: string = "Hello from component 583"

  aboutToAppear() {
    console.log("Component 583 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
