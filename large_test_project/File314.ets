@Component
struct TestComponent314 {
  @State message: string = "Hello from component 314"

  aboutToAppear() {
    console.log("Component 314 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
