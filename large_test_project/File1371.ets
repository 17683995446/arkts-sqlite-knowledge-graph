@Component
struct TestComponent1371 {
  @State message: string = "Hello from component 1371"

  aboutToAppear() {
    console.log("Component 1371 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
