@Component
struct TestComponent605 {
  @State message: string = "Hello from component 605"

  aboutToAppear() {
    console.log("Component 605 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
