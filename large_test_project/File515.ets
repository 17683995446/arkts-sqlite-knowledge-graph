@Component
struct TestComponent515 {
  @State message: string = "Hello from component 515"

  aboutToAppear() {
    console.log("Component 515 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
