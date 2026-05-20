@Component
struct TestComponent771 {
  @State message: string = "Hello from component 771"

  aboutToAppear() {
    console.log("Component 771 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
