@Component
struct TestComponent825 {
  @State message: string = "Hello from component 825"

  aboutToAppear() {
    console.log("Component 825 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
