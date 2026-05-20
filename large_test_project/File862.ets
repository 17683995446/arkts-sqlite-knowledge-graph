@Component
struct TestComponent862 {
  @State message: string = "Hello from component 862"

  aboutToAppear() {
    console.log("Component 862 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
