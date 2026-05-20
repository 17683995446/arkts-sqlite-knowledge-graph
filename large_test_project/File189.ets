@Component
struct TestComponent189 {
  @State message: string = "Hello from component 189"

  aboutToAppear() {
    console.log("Component 189 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
