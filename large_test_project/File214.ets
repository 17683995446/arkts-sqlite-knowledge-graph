@Component
struct TestComponent214 {
  @State message: string = "Hello from component 214"

  aboutToAppear() {
    console.log("Component 214 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
