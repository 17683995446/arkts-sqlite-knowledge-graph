@Component
struct TestComponent927 {
  @State message: string = "Hello from component 927"

  aboutToAppear() {
    console.log("Component 927 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
