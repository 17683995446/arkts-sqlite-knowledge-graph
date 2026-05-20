@Component
struct TestComponent1095 {
  @State message: string = "Hello from component 1095"

  aboutToAppear() {
    console.log("Component 1095 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
