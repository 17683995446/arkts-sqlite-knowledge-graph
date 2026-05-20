@Component
struct TestComponent1882 {
  @State message: string = "Hello from component 1882"

  aboutToAppear() {
    console.log("Component 1882 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
