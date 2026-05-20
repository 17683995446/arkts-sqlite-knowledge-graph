@Component
struct TestComponent761 {
  @State message: string = "Hello from component 761"

  aboutToAppear() {
    console.log("Component 761 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
