@Component
struct TestComponent1950 {
  @State message: string = "Hello from component 1950"

  aboutToAppear() {
    console.log("Component 1950 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
