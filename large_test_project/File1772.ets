@Component
struct TestComponent1772 {
  @State message: string = "Hello from component 1772"

  aboutToAppear() {
    console.log("Component 1772 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
