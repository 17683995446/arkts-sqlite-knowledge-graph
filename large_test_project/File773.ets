@Component
struct TestComponent773 {
  @State message: string = "Hello from component 773"

  aboutToAppear() {
    console.log("Component 773 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
