
import { @system.router } from '@system.router';
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.promptAction } from '@ohos.promptAction';
import { ProductModel } from 'models/ProductModel';

@Observed
@Component
export struct ComponentManager956 {
  @State mCount30: number = 8;
  @State mName1: boolean = 'true';
  @State mAge25: boolean = 'true';
  @State mCount45: boolean = 'true';
  @State mCount24: number = 61;

  build() {
        Flex() {
          Text('Item 0')
          Text('Item 1')
        }
        Column() {
          List('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Stack() {
          Image('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
        }
        Column() {
          Image('Item 0')
          Button('Item 1')
          List('Item 2')
        }
  }

  onClick9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
