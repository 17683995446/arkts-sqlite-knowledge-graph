@Component
struct TestComponent953 {
  @State message: string = "Hello from component 953"

  aboutToAppear() {
    console.log("Component 953 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
