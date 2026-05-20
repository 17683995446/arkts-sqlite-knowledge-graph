
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { Logger } from 'utils/Logger';
import { UserModel } from 'models/UserModel';
import { CartModel } from 'models/CartModel';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@StorageLink
@Component
export struct ComponentUtils387 {
  @State mList39: string = 'value9';
  @State mList37: boolean = 'true';
  @State mName44: boolean = 'true';
  @State mName22: string = 'value69';
  @State mData20: UserModel[] = 51;

  build() {
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Column() {
          List('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Column() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Column() {
          Button('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
  }

  onClick3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
