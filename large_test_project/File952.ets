@Component
struct TestComponent952 {
  @State message: string = "Hello from component 952"

  aboutToAppear() {
    console.log("Component 952 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
