@Component
struct TestComponent798 {
  @State message: string = "Hello from component 798"

  aboutToAppear() {
    console.log("Component 798 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
