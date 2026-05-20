
import { Logger } from 'utils/Logger';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerText } from 'common/CustomerText';
import { CartModel } from 'models/CartModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@Observed
@Component
export struct ComponentWidget398 {
  @State mCount3: string = 'value35';
  @State mList35: boolean = 'true';
  @State mList13: boolean = 'true';
  @State mList22: UserModel[] = 42;

  build() {
        Stack() {
          TextInput('Item 0')
        }
        Row() {
          Button('Item 0')
          Text('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
        }
  }

  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
