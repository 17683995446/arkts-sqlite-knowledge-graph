@Component
struct TestComponent647 {
  @State message: string = "Hello from component 647"

  aboutToAppear() {
    console.log("Component 647 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
