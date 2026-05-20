@Component
struct TestComponent1927 {
  @State message: string = "Hello from component 1927"

  aboutToAppear() {
    console.log("Component 1927 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
