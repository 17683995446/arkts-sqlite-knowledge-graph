@Component
struct TestComponent788 {
  @State message: string = "Hello from component 788"

  aboutToAppear() {
    console.log("Component 788 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
