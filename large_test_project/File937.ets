@Component
struct TestComponent937 {
  @State message: string = "Hello from component 937"

  aboutToAppear() {
    console.log("Component 937 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
