@Component
struct TestComponent275 {
  @State message: string = "Hello from component 275"

  aboutToAppear() {
    console.log("Component 275 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
