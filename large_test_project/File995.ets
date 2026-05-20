@Component
struct TestComponent995 {
  @State message: string = "Hello from component 995"

  aboutToAppear() {
    console.log("Component 995 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
