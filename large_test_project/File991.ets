@Component
struct TestComponent991 {
  @State message: string = "Hello from component 991"

  aboutToAppear() {
    console.log("Component 991 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
