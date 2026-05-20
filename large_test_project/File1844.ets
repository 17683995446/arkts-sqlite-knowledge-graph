@Component
struct TestComponent1844 {
  @State message: string = "Hello from component 1844"

  aboutToAppear() {
    console.log("Component 1844 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
