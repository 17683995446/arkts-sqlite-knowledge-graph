@Component
struct TestComponent987 {
  @State message: string = "Hello from component 987"

  aboutToAppear() {
    console.log("Component 987 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
