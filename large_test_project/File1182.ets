@Component
struct TestComponent1182 {
  @State message: string = "Hello from component 1182"

  aboutToAppear() {
    console.log("Component 1182 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
