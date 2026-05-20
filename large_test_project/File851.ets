@Component
struct TestComponent851 {
  @State message: string = "Hello from component 851"

  aboutToAppear() {
    console.log("Component 851 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
