@Component
struct TestComponent982 {
  @State message: string = "Hello from component 982"

  aboutToAppear() {
    console.log("Component 982 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
