@Component
struct TestComponent1189 {
  @State message: string = "Hello from component 1189"

  aboutToAppear() {
    console.log("Component 1189 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
