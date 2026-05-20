@Component
struct TestComponent1861 {
  @State message: string = "Hello from component 1861"

  aboutToAppear() {
    console.log("Component 1861 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
