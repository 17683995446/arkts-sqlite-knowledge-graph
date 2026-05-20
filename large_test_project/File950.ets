@Component
struct TestComponent950 {
  @State message: string = "Hello from component 950"

  aboutToAppear() {
    console.log("Component 950 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
