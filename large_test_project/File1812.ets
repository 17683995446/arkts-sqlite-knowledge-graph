@Component
struct TestComponent1812 {
  @State message: string = "Hello from component 1812"

  aboutToAppear() {
    console.log("Component 1812 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
