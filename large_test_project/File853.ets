@Component
struct TestComponent853 {
  @State message: string = "Hello from component 853"

  aboutToAppear() {
    console.log("Component 853 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
