@Component
struct TestComponent1788 {
  @State message: string = "Hello from component 1788"

  aboutToAppear() {
    console.log("Component 1788 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
