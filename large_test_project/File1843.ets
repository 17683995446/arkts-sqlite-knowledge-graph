@Component
struct TestComponent1843 {
  @State message: string = "Hello from component 1843"

  aboutToAppear() {
    console.log("Component 1843 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
