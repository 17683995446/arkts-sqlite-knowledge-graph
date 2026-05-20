@Component
struct TestComponent62 {
  @State message: string = "Hello from component 62"

  aboutToAppear() {
    console.log("Component 62 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
