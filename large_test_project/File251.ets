@Component
struct TestComponent251 {
  @State message: string = "Hello from component 251"

  aboutToAppear() {
    console.log("Component 251 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
