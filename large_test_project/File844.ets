@Component
struct TestComponent844 {
  @State message: string = "Hello from component 844"

  aboutToAppear() {
    console.log("Component 844 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
