@Component
struct TestComponent1859 {
  @State message: string = "Hello from component 1859"

  aboutToAppear() {
    console.log("Component 1859 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
