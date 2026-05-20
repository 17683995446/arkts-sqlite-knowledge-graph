@Component
struct TestComponent512 {
  @State message: string = "Hello from component 512"

  aboutToAppear() {
    console.log("Component 512 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
