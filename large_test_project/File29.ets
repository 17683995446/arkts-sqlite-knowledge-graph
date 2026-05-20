@Component
struct TestComponent29 {
  @State message: string = "Hello from component 29"

  aboutToAppear() {
    console.log("Component 29 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
