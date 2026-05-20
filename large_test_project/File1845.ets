@Component
struct TestComponent1845 {
  @State message: string = "Hello from component 1845"

  aboutToAppear() {
    console.log("Component 1845 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
