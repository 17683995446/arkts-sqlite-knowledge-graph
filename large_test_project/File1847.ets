@Component
struct TestComponent1847 {
  @State message: string = "Hello from component 1847"

  aboutToAppear() {
    console.log("Component 1847 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
