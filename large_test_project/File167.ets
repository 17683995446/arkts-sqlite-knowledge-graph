@Component
struct TestComponent167 {
  @State message: string = "Hello from component 167"

  aboutToAppear() {
    console.log("Component 167 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
