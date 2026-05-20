@Component
struct TestComponent933 {
  @State message: string = "Hello from component 933"

  aboutToAppear() {
    console.log("Component 933 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
