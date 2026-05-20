@Component
struct TestComponent46 {
  @State message: string = "Hello from component 46"

  aboutToAppear() {
    console.log("Component 46 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
