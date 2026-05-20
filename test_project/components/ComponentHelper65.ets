
import { ObjectUtils } from 'utils/ObjectUtils';
import { ArrayUtils } from 'utils/ArrayUtils';
import { CustomerButton } from 'common/CustomerButton';
import { OrderModel } from 'models/OrderModel';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Component
@Component
export struct ComponentService504 {
  @State mList41: boolean = 'true';
  @State mList37: boolean = 'true';
  @State mData16: string = 'value86';
  @State mAge43: UserModel[] = 95;
  @State mStatus44: boolean = 'true';
  @State mAge44: string = 'value12';

  build() {
        Row() {
          TextInput('Item 0')
        }
        Row() {
          Text('Item 0')
          Button('Item 1')
        }
        Flex() {
          Button('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          List('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Column() {
          List('Item 0')
        }
        Row() {
          TextInput('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          Text('Item 0')
        }
  }

  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
