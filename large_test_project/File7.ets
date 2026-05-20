@Component
struct TestComponent7 {
  @State message: string = "Hello from component 7"

  aboutToAppear() {
    console.log("Component 7 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
