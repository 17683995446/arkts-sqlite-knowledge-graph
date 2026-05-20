
import { CartModel } from 'models/CartModel';
import { AuthService } from 'services/AuthService';
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Entry
@Component
export struct ComponentController813 {
  @State mCount41: number = 67;
  @State mAge42: boolean = 'true';
  @State mName40: boolean = 'true';
  @State mStatus7: string = 'value18';

  build() {
        Column() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Image('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Flex() {
          List('Item 0')
        }
  }

  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
