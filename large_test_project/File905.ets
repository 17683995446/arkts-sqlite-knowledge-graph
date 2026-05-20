@Component
struct TestComponent905 {
  @State message: string = "Hello from component 905"

  aboutToAppear() {
    console.log("Component 905 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
