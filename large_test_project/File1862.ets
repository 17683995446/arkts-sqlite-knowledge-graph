@Component
struct TestComponent1862 {
  @State message: string = "Hello from component 1862"

  aboutToAppear() {
    console.log("Component 1862 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
