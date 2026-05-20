@Component
struct TestComponent1324 {
  @State message: string = "Hello from component 1324"

  aboutToAppear() {
    console.log("Component 1324 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
