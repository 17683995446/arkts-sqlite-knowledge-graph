@Component
struct TestComponent959 {
  @State message: string = "Hello from component 959"

  aboutToAppear() {
    console.log("Component 959 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
