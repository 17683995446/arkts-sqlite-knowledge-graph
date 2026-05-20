@Component
struct TestComponent1919 {
  @State message: string = "Hello from component 1919"

  aboutToAppear() {
    console.log("Component 1919 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
