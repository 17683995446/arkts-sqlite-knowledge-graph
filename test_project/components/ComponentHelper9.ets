
import { @ohos.router } from '@ohos.router';
import { Logger } from 'utils/Logger';
import { CustomerButton } from 'common/CustomerButton';
import { OrderModel } from 'models/OrderModel';
import { ConfigService } from 'services/ConfigService';
import { @system.router } from '@system.router';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@StorageLink
@Component
export struct ComponentWidget441 {
  @State mName36: string = 'value1';
  @State mStatus35: UserModel[] = 6;
  @State mList10: UserModel[] = 79;

  build() {
        Column() {
          Text('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Row() {
          Text('Item 0')
        }
        Row() {
          Button('Item 0')
          Text('Item 1')
        }
  }

  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
